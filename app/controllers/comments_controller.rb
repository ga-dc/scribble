class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment =Comment.create(comment_params)

    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :author, :body, :post_id)
  end


end
