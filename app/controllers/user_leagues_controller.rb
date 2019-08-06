class UserLeaguesController < ApplicationController
    def index
        userleague = UserLeague.all
        render json:userleague
    end
end
