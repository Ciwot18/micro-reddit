class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save
        redirect_to users_path(@users)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
      
        flash.notice = "Article '#{@user.username}' Updated!"
      
        redirect_to user_path(@user)
    end      

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path(@user)
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :username)
    end
end
