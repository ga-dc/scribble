class CommentsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  #new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  #create
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.create!(comment_params.merge(post: @post))
    redirect_to post_path(@post)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  #edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  #update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  #delete
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end
