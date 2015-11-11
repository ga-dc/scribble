class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Post.create()
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(param[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_comments_path
  end

end
