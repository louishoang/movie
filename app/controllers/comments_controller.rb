class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @show = Show.find(params[:show_id])
    @review = Review.find(params[:review_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.review_id = params[:review_id]
    if @comment.save
      CommentNotification.notification(@comment).deliver
      flash[:notice] = "Comment created successfully"
      redirect_to show_path(params[:show_id])
    else
      @show = Show.find(params[:show_id])
      @review = Review.find(params[:review_id])
      flash[:notice] = "You didn't enter enough information."
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @review = Review.find(params[:review_id])
    @show = Show.find(params[:show_id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment updated successfully"
      redirect_to show_path(params[:show_id])
    else
      flash[:notice] = "You didn't enter enough information, please try again."
      redirect_to show_path(params[:show_id])
    end
  end

  def show
    @comment = Comment.find(params[:id])
    if @comment.destroy
      flash[:notice] = "Comment deleted successfully"
      redirect_to show_path(params[:show_id])
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
