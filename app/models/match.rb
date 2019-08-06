class Match < ApplicationRecord
  belongs_to :league
  belongs_to :team
  has_many :predictions
end
