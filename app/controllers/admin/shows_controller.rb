module Admin
  class ShowsController < ApplicationController
    before_filter :admin_authorize!
    before_action :set_show, only: [:destroy, :edit, :update]

    def index
      @shows = Show.order(:created_at).page params[:page]
    end

    def new
      @show = Show.new
    end

    def create
      respond_to do |format|
        @show = Show.new(show_params)
        @show.save
        flash[:notice]= "Movie is added successfully"
        format.html {redirect_to admin_shows_path}
        format.js
      end
    end

    def edit
    end

    def update
      if @show.update(show_params)
        flash[:notice]= "Movie is updated successfully"
        redirect_to admin_shows_path
      else
        flash[:notice]= "Please check your input"
        render "edit"
      end
    end

    def destroy
      @show.destroy
      flash[:notice] = "Movie has been successfully deleted"
      redirect_to admin_shows_path
    end

    private

    def show_params
      params.require(:show).permit(:name, :genre_id, :year, :poster, :description, :video)
    end

    def set_show
      @show = Show.find(params[:id])
    end
  end
end
