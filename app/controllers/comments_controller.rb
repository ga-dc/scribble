class CommentsController < ApplicationController
  # index
  def index
    @comment = Comment.all
  end

  # new
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  #show
  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:post_id])
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
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :comment, :post_id)
  end
end
