class AlldataController < ApplicationController
    serialization_scope :view_context

    def current_user
        @current_user
    end

    def merged_data
        @predictions = Prediction.all
        @matches = Match.all
        @userleagues = UserLeague.all
        @teams = Team.all
        @leagues = League.all
        @users = User.all
        @merged_content = {
            predictions: @predictions,
            matches: @matches,
            userleagues: @userleagues,
            teams: @teams,
            leagues: @leagues,
            users: @users
        }

        @merged_content = {
            league: LeagueSerializer.new(@current_user.leagues.first, @current_user)
        }

        render json: @merged_content


        # render json: {alldata: AlldataSerializer.new(testfixtures)}
    end
end
