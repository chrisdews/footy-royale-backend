
class LeagueSerializer < ActiveModel::Serializer
    attributes :id, :round_number, :name, :active_users, :active_users, :inactive_users, :current_matches, :users_submitted_predictions, :user_predictions, :all_teams

    def initialize(league, user)
        super(league)
        @user = user
    end

    # def self.select_active_users
    #     self.object.user_leagues.select(|ul| ul.user_active == true && ul.league_id == self.id)
    # end

    # def select_user_active
    #     self.object.user_leagues.find_by(user_id)
    # end

    # def active_users
    #     self.object.users.map{|u| u.username}
    # end

    # def inactive_users
    #     self.object.users.map{|u| u.username}
    # end

    def current_matches
        self.object.current_matches.map{|m| MatchSerializer.new(m, @user, self.object)}
    end

    


  
  end