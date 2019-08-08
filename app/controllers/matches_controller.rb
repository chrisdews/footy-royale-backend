class MatchesController < ApplicationController
    def index
        matches = Match.all
        render json:matches
    end

    def update_matches_from_api

        render json: {message: 'all updated'}
    end
end
