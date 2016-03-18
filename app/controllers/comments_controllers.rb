class CommentsController < ApplicationController

  def index
    @comments = Comments.all
  end

  def create
    @comment = Comments.create(comment_params)
    redirect_to "/comments/#{@artist.id}"
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

end
