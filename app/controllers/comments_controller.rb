class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user.id)
    @comments = @post.comments
  end
  def show
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user_id)
    @comment = Comment.find(params[:id])
  end
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comments_params)
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

  end
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update!(comments_params)
    redirect_to post_path(@post)
  end
  private
  def comments_params
    params.require(:comment).permit(:author, :text)
  end
end
