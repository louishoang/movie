module Admin
  class UsersController < ApplicationController
    before_filter :admin_authorize!

    def index
      if params[:search]
        query = params[:search][:search]
        @users = User.where("email ILIKE ?", "%#{query}%").order(:email).page params[:page]
      else
        @users = User.order(:email).page params[:page]
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "User has been successfully deleted"
      redirect_to admin_users_path
    end
  end
end
