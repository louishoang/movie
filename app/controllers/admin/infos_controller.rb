module Admin
  class InfosController < ApplicationController
    before_filter :admin_authorize!
    before_action :set_page, only: [:edit,:update, :destroy]

    def index
      @infos = Info.all
    end

    def new
      @info = Info.new
    end

    def create
      @info = Info.new(info_params)
      if @info.save
        flash[:notice] = "New static page has been added"
        redirect_to admin_infos_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @info.update(info_params)
        flash[:notice] = "Page is updated successfully"
        redirect_to admin_infos_path
      else
        render :edit
      end
    end

    def destroy
      if @info.destroy
        flash[:notice] = "Page is deleted successfully"
        redirect_to admin_infos_path
      end
    end

    private

    def set_page
      @info = Info.find(params[:id])
    end

    def info_params
      params.require(:info).permit(:id, :name, :content, :permalink)
    end
  end
end
