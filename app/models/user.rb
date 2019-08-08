class User < ApplicationRecord
    has_secure_password
    has_many :predictions
    has_many :user_leagues
    has_many :leagues, through: :user_leagues
    validates :username, presence: true
    validates :username, uniqueness: true

    def picked_teams (league)
        self.predictions.where(league_id: league.id, royale_round: league.round_number).map{|p| p.team}
    end
end
