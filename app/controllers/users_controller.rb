class UsersController < ApplicationController
    

    skip_before_action :authorize, only:[:create]

    def index
        users = User.all
        render json:users
    end

    def create 
        user = User.find_or_create_by( user_params ) 
        userleague = UserLeague.create(user_id: user.id, league_id:1, user_active: true)
        userleague.league.current_user(user.id)
        # add win_count: 0
        # debugger
        
        if user.valid?
            render json: { user: user, token: issue_token(user_id: user.id) }, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    private 

    def user_params
        params.require(:newuserObj).permit(:username, :password, :win_count)
    end
    # :password, 
end
