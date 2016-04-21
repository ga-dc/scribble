class PostsController < ApplicationController

  def index
    @posts = Post.all
    @comments = Comment.all
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
    @comments = Comment.all
    @comment = Comment.new
  end

  def new
    @post = Post.new
    # @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def create
    @post = Post.create(post_params)
    @comment = Comment.create(@comment)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

  def comment_params
    params.require(:comment).permit(:body, :author)
  end

end
