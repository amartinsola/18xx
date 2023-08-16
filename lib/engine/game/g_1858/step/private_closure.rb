# frozen_string_literal: true

require_relative '../../../step/base'
require_relative 'private_exchange'

module Engine
  module Game
    module G1858
      module Step
        class PrivateClosure < Engine::Step::Base
          include PrivateExchange

          def actions(entity)
            return [] unless entity == current_entity

            %w[choose pass]
          end

          def auto_actions(entity)
            return unless exchange_corporations(entity).empty?

            [Engine::Action::Pass.new(entity)]
          end

          def description
            'Exchange Private Companies'
          end

          def pass_description
            "Sell #{current_entity.id} to bank"
          end

          def process_pass(action)
            @game.close_private(action.entity)
          end

          def choice_available?(_entity)
            true
          end

          def choice_name
            "Exchange #{current_entity.id} for a share"
          end

          def choices
            choices = {}
            exchange_corporations(current_entity).each do |corporation|
              add_choice(choices, corporation, 'treasury') if corporation.num_treasury_shares.positive?
              add_choice(choices, corporation, 'market') if corporation.num_market_shares.positive?
            end
            choices
          end

          def add_choice(choices, corporation, location)
            k = { 'corporation' => corporation.id, 'from' => location }
            v = "#{corporation.id} #{location} share"
            choices[k] = v
          end

          def share_chosen(corporation, share_location)
            if share_location == 'treasury'
              corporation.shares.first
            else
              @game.share_pool.shares_by_corporation[corporation].first
            end
          end

          def process_choose(action)
            choice = action.choice
            corporation = @game.corporations.find { |c| c.id == choice['corporation'] }
            share_location = choice['from']
            minor = action.entity
            company = @game.private_company(minor)
            player = company.owner

            share = share_chosen(corporation, share_location)
            exchange_for_share(share, corporation, minor, player)

            if share_location == 'treasury'
              acquire_private(corporation, minor)
              claim_token(corporation, minor)
            else
              company.owner = @game.bank
              player.companies.delete(company)
            end
            @game.close_private(company)
          end

          def exchange_corporations(minor)
            @game.corporations.select do |corporation|
              @game.corporation_private_connected?(corporation, minor) &&
                (corporation.num_treasury_shares.positive? ||
                 corporation.num_market_shares.positive?)
            end
          end
        end
      end
    end
  end
end
