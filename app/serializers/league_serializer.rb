
class LeagueSerializer < ActiveModel::Serializer
    attributes :id, :round_number, :current_week, :name, :active_users, :active_users, :inactive_users, :current_matches, :users_submitted_predictions, :user_predictions, :all_teams

    def initialize(league, user = nil)
        super(league)
        @user = user.class == User ? user : nil
    end

    def current_matches
        self.object.current_matches.map{|m| MatchSerializer.new(m, @user, self.object)}
    end

    


  
  end