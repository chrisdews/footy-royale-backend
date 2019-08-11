
class PredictionSerializer < ActiveModel::Serializer
    attributes :id, :match_id, :team_id, :user_id, :league_id, :royale_round
end