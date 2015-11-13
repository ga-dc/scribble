class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    @post = Post.find(params[:post_id])
  end

  def new
      @post = Post.find(params[:post_id])
      @comment = Comment.new
  end

  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      redirect_to @post
  end

  def show
    @post = Post.find(parmas[:id])
    @comment = Comment.find(params[:id])
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

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :author)
  end
end
