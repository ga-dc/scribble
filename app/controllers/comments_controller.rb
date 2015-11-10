class CommentsController < ApplicationController

  #index
  def index
    @comments = Comment.all
  end

  #new
  def new
    @comment = Comment.new
  end

  #create
  def create
    @comment = Comment.create!(comment_params)
    redirect_to comment_path(@comment)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  #edit
  def edit
    @comment = Comment.find(params[:id])
  end

  #update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to comment_path(@comment)
  end

  #delete
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path()
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :content)
  end
end
