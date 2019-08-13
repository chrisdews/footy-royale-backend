class MatchesController < ApplicationController
    def index
        matches = Match.all
        render json:matches
    end

    # should be update but cors error..
    def update
        match = Match.find_by(id: match_params[:id])

        match.update match_params
        if match.valid?
            render json: { match: match}, status: :created
        else
            render json: { errors: match.errors.full_messages }, status: :not_accepted
        end
    end

    def update_matches_from_api
        render json: {message: 'all updated'}
    end

    private

    def match_params
        params.require(:submitObj).permit(:id, :team_h_score, :team_a_score)
    end
end
