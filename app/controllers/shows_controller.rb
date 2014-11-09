class ShowsController < ApplicationController

  def index
      @ten_newest = Show.order(created_at: :desc).limit(10)
    if params[:search]
      @shows = Show.search(params[:search]).order("name").page(params[:page])
    else
      @shows = Show.order("name").page(params[:page])
    end
  end

  def show
    @show = Show.find(params[:id])
    @reviews = @show.reviews.order(created_at: :desc).includes(:comments, :votes)
    @review = Review.new
    @comment = Comment.new
  end
end
