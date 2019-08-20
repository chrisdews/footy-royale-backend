class UsersController < ApplicationController
    

    skip_before_action :authorize, only:[:create]

    def index
        users = User.all
        render json:users
    end

    def create 
        user = User.create( user_params ) 
        
        if user.valid?

            league = League.first
            if league.round_number == 1
                userleague = UserLeague.create(user_id: user.id, league_id:1, user_active: true)
            else
                userleague = UserLeague.create(user_id: user.id, league_id:1, user_active: false)
            end
            

            render json: { user: user, token: issue_token(user_id: user.id) }, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :win_count)
    end
    # :password, 
end
