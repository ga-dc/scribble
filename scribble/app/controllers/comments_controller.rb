class CommentsController < ApplicationController

  def index
  end
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create!(comment_params.merge(user: current_user))
    redirect_to post_path(@post, @user), notice:
    "#{current_user.email} has left a new comment!"
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user: current_user))
    redirect_to @comment.post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end

end
