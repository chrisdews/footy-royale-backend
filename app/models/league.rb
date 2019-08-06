class League < ApplicationRecord
    has_many :user_leagues
    has_many :matches
end
