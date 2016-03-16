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
    @comment =
    @comment =
  end

  def delete
    @comment =
    @comment =
  end

end
