class AlldataController < ApplicationController
    serialization_scope :view_context

    def current_user
        @current_user
    end

    def merged_data

        @merged_content = {
            league: LeagueSerializer.new(@current_user.leagues.first, @current_user)
        }
        
        render json: @merged_content


        # render json: {alldata: AlldataSerializer.new(testfixtures)}
    end
end
