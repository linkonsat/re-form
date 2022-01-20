class UsersController < ApplicationController
    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        debugger
        user_parameters = params[:user]
        if @user.update( username: user_parameters[:username], password: user_parameters[:password], email: user_parameters[:email])
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def create
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])

        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

end
