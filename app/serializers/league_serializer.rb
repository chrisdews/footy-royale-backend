
class LeagueSerializer < ActiveModel::Serializer
    attributes :id, :round_number, :name, :users, :current_matches

    def initialize(league, user)
        super(league)
        @user = user
    end

    def users
        self.object.users.map{|u| u.username}
    end

    def current_matches
        self.object.current_matches.map{|m| MatchSerializer.new(m, @user, self.object)}
    end
  
  end