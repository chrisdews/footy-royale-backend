class PredictionsController < ApplicationController
    def index
        predictions = Prediction.all
        render json:predictions
    end
end
