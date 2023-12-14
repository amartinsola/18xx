# frozen_string_literal: true

require_relative '../meta'

module Engine
  module Game
    module G18Mag
      module Meta
        include Game::Meta

        DEV_STAGE = :production

        GAME_SUBTITLE = 'Hungarian Railway History'
        GAME_DESIGNER = 'Leonhard "Lonny" Orgler'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/18Mag'
        GAME_LOCATION = 'Hungary'
        GAME_PUBLISHER = :lonny_games
        GAME_RULES_URL = {
          'Base 18Mag Rules' =>
          'https://www.lonny.at/app/download/10197748784/18Mag_Rules_ENG_comp.pdf',
          'Expansion Rules' =>
            'https://www.lonnygames.com/app/download/13361903531/18Mag_Exp_Rules_English.pdf',
        }.freeze

        PLAYER_RANGE = [2, 6].freeze
        OPTIONAL_RULES = [
         {
           sym: :standard_divs,
           short_name: 'Standard Dividends',
           desc: 'Use standard rules for dividends (all or nothing)',
         },
         {
           sym: :new_minors_challenge,
           short_name: 'New minors - challenging',
           desc: 'Minors 14, 15, 16 are added to the game (3-6 players)',
         },
         {
           sym: :new_minors_simple,
           short_name: 'New minors - simple',
           desc: 'Minors 14, 15, 16 are added and three random minors are removed at setup (3-6 players)',
         },
         {
           sym: :new_major,
           short_name: 'New major',
           desc: 'Major CIWL is added. The new major grants a bonus for running red to red routes (3-6 players)',
         },
         {
           sym: :supporters,
           short_name: 'Add Supporter Cards',
           desc: 'Players may choose one of six "supporter cards" as an optional action in the first SR. '\
                 'The chosen supporter may be used once per OR to benefit one of that player\'s minor companies (3-6 players)',
         },
        ].freeze
      end
    end
  end
end
