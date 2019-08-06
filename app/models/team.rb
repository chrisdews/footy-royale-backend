class Team < ApplicationRecord
    has_many :predictions
    has_many :matches
end
