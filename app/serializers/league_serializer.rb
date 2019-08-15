
class LeagueSerializer < ActiveModel::Serializer
    attributes :id, 
        :round_number, 
        :current_week, 
        :name, 
        :active_users,  
        :user_league_current_user,
        :check_prediction_losers, 
        :inactive_users, 
        :current_matches, 
        :users_submitted_predictions, 
        :user_predictions, 
        :all_teams
        

    def initialize(league, user = nil)
        super(league)
        @user = user.class == User ? user : nil
    end

    def current_matches
        self.object.current_matches.map{|m| MatchSerializer.new(m, @user, self.object)}
    end

    def user_league_current_user
        self.object.user_league_current_user(@user)
    end

    def user_predictions
        self.object.user_predictions(@user)
    end
  end