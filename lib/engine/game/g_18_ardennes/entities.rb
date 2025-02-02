# frozen_string_literal: true

module Engine
  module Game
    module G18Ardennes
      module Entities
        COMPANIES = [
          {
            sym: 'GL',
            name: 'Guillaume-Luxembourg',
            type: :minor,
            value: 100,
            discount: 0,
            revenue: 25,
            color: :yellow,
            text_color: :black,
            abilities: [{ type: 'no_buy' }],
          },
        ].freeze

        CORPORATIONS = [
          {
            sym: '1',
            name: 'Hollandsche IJzeren Spoorweg Maatschappij',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/1',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'B8',
            city: 0,
          },
          {
            sym: '2',
            name: 'Nederlandsche Rhijnspoorweg-Maatschappij',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/2',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'B8',
            city: 1,
          },
          {
            sym: '3',
            name: 'Rheinische Eisenbahngesellschaft',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/3',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'E15',
          },
          {
            sym: '4',
            name: 'Großherzoglich Badische Staatseisenbahnen',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/4',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'G25',
          },
          {
            sym: '5',
            name: 'Compagnie de Strasbourg à Bâle',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/5',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'J24',
          },
          {
            sym: '6',
            name: 'Compagnie du Nord-est',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/6',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'H6',
          },
          {
            sym: '7',
            name: 'Pfalzbahn',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/7',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'I21',
          },
          {
            sym: '8',
            name: 'Ligne de Paris à Douai et Lille',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/8',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'M7',
            city: 0,
          },
          {
            sym: '9',
            name: 'Compagnie de Paris à Strasbourg',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/9',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'M7',
            city: 1,
          },
          {
            sym: '10',
            name: 'Cöln-Mindener Eisenbahn-Gesellschaft',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/10',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'D18',
          },
          {
            sym: '11',
            name: 'Bergisch-Märkische Eisenbahn-Gesellschaft',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/11',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'B16',
          },
          {
            sym: '12',
            name: 'Compagnie du chemin de fer des Ardennes et de l\'Oise',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/12',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'K11',
          },
          {
            sym: '13',
            name: 'Société Anonyme des chemins de fer d\'Anvers à Rotterdam',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/13',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'E9',
          },
          {
            sym: '14',
            name: 'Grand Central Belge',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/14',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'F10',
          },
          {
            sym: '15',
            name: 'Großherzoglich Hessische Staatseisenbahnen',
            tokens: [0, 40],
            color: :white,
            text_color: :black,
            logo: '18_ardennes/15',
            float_percent: 100,
            type: :minor,
            shares: [100],
            max_ownership_percent: 100,
            hide_shares: true,
            coordinates: 'E25',
            city: 1,
          },
          {
            sym: 'BY',
            name: 'Königlich Bayerische Staats-Eisenbahn',
            color: :lightblue,
            text_color: :black,
            logo: '18_ardennes/BY',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[E25 G25 H26 I21 J24],
          },
          {
            sym: 'N',
            name: 'Compagnie des chemins de fer du Nord',
            color: :saddlebrown,
            text_color: :white,
            logo: '18_ardennes/N',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[G3 H6 K5 M7],
          },
          {
            sym: 'E',
            name: 'Compagnie des chemins de fer de l\'Est',
            color: :orange,
            text_color: :black,
            logo: '18_ardennes/E',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[I21 J18 J24 K11 M7],
          },
          {
            sym: 'NL',
            name: 'Maatschappij tot Exploitatie van Staatsspoorwegen',
            color: :yellow,
            text_color: :black,
            logo: '18_ardennes/NL',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[B8 B12 C7 E5 E9 E15],
          },
          {
            sym: 'BE',
            name: 'État Belge',
            color: :darkgreen,
            text_color: :white,
            logo: '18_ardennes/BE',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[E9 E15 F4 F10 H6 H10],
          },
          {
            sym: 'P',
            name: 'Preußische Staatseisenbahnen',
            color: :darkblue,
            text_color: :white,
            logo: '18_ardennes/P',
            float_percent: 60,
            type: '5-share',
            shares: [40, 20, 20, 20],
            always_market_price: true,
            capitalization: :incremental,
            tokens: [0, 100, 100, 100, 100, 100],
            coordinates: %w[B16 D18 E15 E25],
          },
        ].freeze

        def company_header(company)
          case company.type
          when :minor then 'MINOR COMPANY'
          when :concession then 'PUBLIC COMPANY'
          else raise GameError, 'Unknown type of private company'
          end
        end

        def game_companies
          return super if @players.size == 4

          # The Guillaume-Luxembourg is only used in four-player games.
          super.reject { |c| c[:type] == :minor }
        end

        def setup_preround
          @companies.concat(init_concessions)
        end

        def concession_companies
          companies.select { |company| company.type == :concession }
        end

        def minor_companies
          companies.select { |company| company.type == :minor }
        end

        def major_corporations
          corporations.reject { |corporations| corporations.type == :minor }
        end

        def minor_corporations
          corporations.select { |corporations| corporations.type == :minor }
        end

        def reservation_corporations
          minor_corporations
        end

        def sorted_corporations
          major_corporations.sort
        end

        # 18Ardennes doesn't have multiple layers of private companies.
        def check_new_layer; end

        def can_par?(corporation, parrer)
          return true if corporation.type == :minor

          super
        end

        # Is the player unable to raise enough cash to start one of the
        # corporations that they are under obligation for?
        def bankrupt?(player)
          return false if player.companies.none? { |c| c.type == :concession }

          cash_needed(player) > liquidity(player)
        end

        # How much a minor is worth, when exchanged for a share.
        # A minor's value is twice its market price, but anything in excess
        # of the value of the major's share is lost.
        def minor_sale_value(minor, share_price)
          [share_price.price, minor.share_price.price * 2].min
        end

        # The minimum amount of cash needed to start a major company.
        def min_concession_cost(concession)
          major = major_corporations.find do |corp|
            corp.par_via_exchange == concession
          end
          minor = pledged_minors[major]
          min_par = lowest_major_par
          (min_par.price * 3) - minor_sale_value(minor, min_par)
        end

        private

        # Creates a concession company for each major corporations
        def init_concessions
          major_corporations.map do |corporation|
            concession = Company.new(
              sym: corporation.id,
              name: corporation.name,
              type: :concession,
              value: 0,
              color: corporation.color,
              text_color: corporation.text_color,
            )
            corporation.par_via_exchange = concession
            concession
          end
        end

        # The minimum amount of cash needed to start one of the corporations
        # that the player is under obligation for.
        def cash_needed(player)
          player.companies
                .select { |company| company.type == :concession }
                .map { |concession| min_concession_cost(concession) }
                .min
        end

        # The lowest par price for starting a major corporation.
        def lowest_major_par
          @lowest_major_par ||= stock_market.par_prices.reverse.find do |pp|
            pp.types.include?(:par_2)
          end
        end
      end
    end
  end
end
