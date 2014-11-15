module Admin
  class UsersController < ApplicationController
    before_filter :admin_authorize!

    def index
      @users = User.order(:email).page params[:page]
    end
  end
end
