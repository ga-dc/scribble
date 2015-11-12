class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  # new
  def new
    @post = Post.find(params[:artist_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_comment_path(@post, @comment)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  def update
      @comment = Comment.find(params[:id])
      @post = Post.find(params[:post_id])
      @comment.update(comment_params.merge(post: @post))
      redirect_to post_comment_path(@comment.post, @comment)
    end

    # destroy
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to comment_path
    end
