class ShowsController < ApplicationController

  def index
    @genres = Genre.all
    @ten_newest = Show.order(created_at: :desc).limit(10)
    if params[:search]
      @shows = Show.search(params[:search]).order("created_at").page(params[:page])
    elsif params[:popular] == "true"
      @shows = Show.order(viewcount: :desc).page(params[:page])
    elsif params[:genre]
      @shows = Show.where("genre_id = ?", params[:genre]).order("created_at").page(params[:page])
    elsif params[:newest] == "true"
      @shows = Show.order(created_at: :desc).page(params[:page])
    elsif params[:recommend] == "true"
      @shows = Show.where("genre_id = ?", current_user.last_view).page(params[:page])
    else
      @shows = Show.order("created_at").page(params[:page])
    end
  end

  def show
    @show = Show.find(params[:id])
    @show.viewcount += 1
    @show.save
    if current_user
      current_user.last_view = @show.genre_id
      current_user.save
    end
    @reviews = @show.reviews.order(created_at: :desc).includes(:comments)
    @review = Review.new
    @comment = Comment.new
  end
end
