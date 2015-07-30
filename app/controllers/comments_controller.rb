class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end
  def show
      @comment = Comment.find(params[:id])
  end
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/comments/#{@comment.id}"
    else
      redirect_to "/comments/new"
    end
  end
  def edit
      @comment = Comment.find(params[:id])
  end
  def update
    @comment = Comment.find(params[:id])
    @comment.update(post_params)
    redirect_to "/comments/#{@comment.id}"
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/" # may need to change this up
  end
  private
  def comment_params
        params.require(:comment).permit(:author, :comment)
  end


end
