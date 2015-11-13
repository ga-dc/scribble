class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :delete]

  def index
    redirect_to post_path(params[:post_id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    cp = comment_params
    cp[:user] = current_user
    @post.comments.create(cp)
    redirect_to post_path(params[:post_id])
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(params[:post_id])
  end



  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
