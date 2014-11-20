class InfosController < ApplicationController
  def show
    @info = Info.find(params[:id])
  end
end
