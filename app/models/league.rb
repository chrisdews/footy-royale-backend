class League < ApplicationRecord
    has_many :user_leagues
    has_many :users, through: :user_leagues
    has_many :matches
    has_many :predictions


    def self.current_week
        1
    end

    def temp_user_id
        1
    end

    def current_matches
        Match.where(event: League.current_week)
    end

    # get the all users from user_leagues.user_active
    # then filter by this league

    def users_league_active
        self.user_leagues.where(user_active: true)
    end

    def users_league_inactive
        self.user_leagues.where(user_active: false)
    end

    def active_users
        users_league_active.map{|i| i.user.username}
    end

    def inactive_users
        users_league_inactive.map{|i| i.user.username}
    end

    def current_predictions
        self.predictions.where(royale_round: self.round_number)
    end

    def users_submitted_predictions
        current_predictions.map{|p| p.user.username}
    end

    def user_predictions
        self.predictions.select{|p| p.user_id == temp_user_id}       
    end

    def all_teams
        Team.all
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