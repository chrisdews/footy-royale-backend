
class MatchSerializer < ActiveModel::Serializer
    attributes :id, :team_h, :team_a, :team_a_score, :team_h_score, :team_h_available, :team_a_available

    def initialize(match, user, league)
        super(match)
        @user = user
        @league = league
    end

    def team_h_available
        !@user.picked_teams(@league).include?(self.object.team_h)
    end

    def team_a_available
        !@user.picked_teams(@league).include?(self.object.team_a)
    end
  
  end