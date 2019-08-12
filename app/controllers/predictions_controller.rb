class PredictionsController < ApplicationController
    def index
        predictions = Prediction.all
        render json:predictions
    end

    def create
        # debugger
        prediction = Prediction.find_or_create_by(royale_round: prediction_params[:royale_round], user_id: prediction_params[:user_id])

        prediction.update prediction_params

        if prediction.valid?
            render json: { prediction: prediction}, status: :created
        else
            render json: { errors: prediction.errors.full_messages }, status: :not_accepted
        end
    end

    private 

    def prediction_params
        params.require(:newPredictionObj).permit(:match_id, :team_id, :user_id, :league_id, :royale_round)
    end
end
