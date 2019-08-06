class UsersController < ApplicationController
    

    def create 
        user = User.create( user_params ) 
        # add win_count: 0
    end

    def index
        users = User.all
        render json:users
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :win_count)
    end
end
