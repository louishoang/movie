class UsersController < ApplicationController
  def index
    binding.pry
  end

  def show
    @user = User.find(params[:id])
  end
end
