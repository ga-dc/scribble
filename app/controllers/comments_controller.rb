class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:comment_id])
  end
  def new
    @post = Post.find(params[:post_id])
  end
  def create
    @post = Post.find(params[:post_id])
  end
  def destroy
    @post = Post.find(params[:post_id])
  end
  def edit
    @post = Post.find(params[:post_id])
  end
  def update
    @post = Post.find(params[:post_id])
  end
  private
  def comments_params
    params.require(:comment).permit(:author, :text)
  end
end
