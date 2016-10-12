class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(strong_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.update(strong_params)
    else
      flash[:alert] = "You are not authorized to edit this comment"
    end
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
    else
      flash[:alert] = "You are not authorized to delete this comment"
    end
    redirect_to post_path(@post)
  end

  private
  def strong_params
    params.require(:comment).permit(:body)
  end
end
