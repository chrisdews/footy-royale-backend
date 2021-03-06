class LeaguesController < ApplicationController
    def index
        leagues = League.all
        render json:leagues
    end

    def create
    end

    def update
        league = League.find_by(id: league_params[:id])
        # currentuser = User.find_by(id: league.current_user)
        # debugger
        league.check_prediction_losers.each do |p|
           ul = p.user.user_leagues.find_by(league_id: league.id)
           ul.update(user_active: false)
        end

        league.set_false_if_no_prediction

        # debugger

        league.update league_params
        # debugger
        if league.valid?
            render json: { league: league}, status: :created
        else
            render json: { errors: league.errors.full_messages }, status: :not_accepted
        end
    end

    private

    def league_params
        params.require(:leagueObj).permit(:id, :round_number, :current_week)
    end
end
