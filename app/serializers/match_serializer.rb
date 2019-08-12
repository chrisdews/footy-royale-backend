
class MatchSerializer < ActiveModel::Serializer
    attributes :id, :team_h, :team_a, :team_a_score, :team_h_score
    attribute :team_h_available, if: :has_user_and_league
    attribute :team_a_available, if: :has_user_and_league

    def has_user_and_league
        @user != nil && @league != nil
    end

    def initialize(match, user = nil, league = nil)
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