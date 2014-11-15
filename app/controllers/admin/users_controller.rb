module Admin
  class UsersController < ApplicationController
    before_filter :admin_authorize!
    before_action :set_user, only: [:destroy, :edit, :update]

    def index
      if params[:search]
        query = params[:search][:search]
        @users = User.where("email ILIKE ?", "%#{query}%").order(:email).page params[:page]
      else
        @users = User.order(:email).page params[:page]
      end
    end

    def edit
    end

    def update
      if @user.update(user_params)
        flash[:notice]= "User profile is updated successfully"
        redirect_to admin_users_path
      else
        flash[:notice]= "Please check your input"
        render "edit"
      end
    end

    def destroy
      @user.destroy
      flash[:notice] = "User has been successfully deleted"
      redirect_to admin_users_path
    end

    private

    def user_params
      params.require(:user).permit(:email, :role)
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
end
