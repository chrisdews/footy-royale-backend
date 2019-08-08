class League < ApplicationRecord
    has_many :user_leagues
    has_many :users, through: :user_leagues
    has_many :matches

    def self.current_week
        1
    end

    def current_matches
        Match.where(event: League.current_week)
    end
end

# {
#     id
#     h_team: {
#         img_src: 'spurs.com/logo',
#         name,
#         available: false
#     }
#     a_team: {
#         img_src: 'huddersfield.com/logo',
#         name,
#         available: true
#     }
# }