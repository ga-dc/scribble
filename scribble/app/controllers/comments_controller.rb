class CommentsController < ApplicationController

  def index
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.delete
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
