class League < ApplicationRecord
    has_many :user_leagues
    has_many :users, through: :user_leagues
    has_many :matches
    has_many :predictions

    def current_matches
        Match.where(event: self.current_week)
    end


    def users_league_active
        self.user_leagues.where(user_active: true)
    end

    def users_league_inactive
        self.user_leagues.where(user_active: false)
    end

    def user_league_current_user(current_user)
        self.user_leagues.where(user_id: current_user.id)
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

    def user_predictions(current_user)
        # debugger
        self.predictions.select{|p| p.user_id == current_user.id}       
    end

    def all_teams
        Team.all
    end

    def check_prediction_losers
        # debugger
        current_predictions.select{|p| p.team_id != p.match.winner}
    end

    def set_false_if_no_prediction
        # users_league_active.each do |ul|
        #     if ul.user.predictions.select(|p| p.royale_round == self.round_number)
        #         true
        #     else
        #         ul.update(user_active: false)
        #     end

        debugger
    end



end