class Match < ApplicationRecord
  has_many :predictions


  def team_h
    Team.find(self.team_h_id)
  end

  def team_a
    Team.find(self.team_a_id)
  end
end
