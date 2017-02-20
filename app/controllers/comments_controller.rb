class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @comment = Comment.new
  end

  # create
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/posts/#{@comment.post_id}"
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(song_params)
    redirect_to "/posts/#{@comment.post_id}"
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/posts/#{@comment.post_id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :content, :post_id)
  end
end
