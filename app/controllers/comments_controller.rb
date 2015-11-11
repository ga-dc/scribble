class CommentsController < ApplicationController
  # index
  def index
    @comment = Comment.all
  end

  # new
  def new
    @comment = Comment.new
  end

  # create
  def create
    @comment = Comment.create(comment_params)
    redirect_to posts_path()
    binding.pry
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
    @comment.update(comment_params)

    # redirect_to "/comments/#{@comment.id}"
    redirect_to comment_path(@comment.id)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroyPosts

    # redirect_to "/comments"
    redirect_to comments_path()
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :comment, :post_id)
  end
end
