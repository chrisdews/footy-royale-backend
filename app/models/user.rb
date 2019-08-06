class User < ApplicationRecord
    has_secure_password
    has_many :predictions
    has_many :userleagues
    has_many :leagues, through: :userleagues
    validates :username, presence: true
    validates :username, uniqueness: true
end
