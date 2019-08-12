class LeaguesController < ApplicationController
    def index
        leagues = League.all
        render json:leagues
    end

    def create
        # this should be update, but CORs errors...
        league = League.find_by(id: league_params[:id])
        league.update league_params
        # league.current_week
        # debugger
        if league.valid?
            render json: { league: league}, status: :created
        else
            render json: { errors: league.errors.full_messages }, status: :not_accepted
        end
    end

    private

    def league_params
        params.require(:leagueObj).permit(:id, :round_number)
    end
end
