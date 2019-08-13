class Match < ApplicationRecord
  has_many :predictions


  def team_h
    Team.find(self.team_h_id)
  end

  def team_a
    Team.find(self.team_a_id)
  end

  def winner
    if self.team_h_score == nil || self.team_a_score == nil
      "game not finished"
    elsif self.team_h_score > self.team_a_score
      self.team_h_id 
    elsif self.team_h_score < self.team_a_score
      self.team_a_id
    else
      "it's a draw"
    end

  end
end
