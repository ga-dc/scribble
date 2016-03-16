class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to "/"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.update(params[:id], post_params)
    redirect_to post_url
  end

  def destroy
    @post = Post.destroy(params[:id])
    redirect_to posts_url
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
