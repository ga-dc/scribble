class PostsController < ApplicationController
  # actions will go here
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)

    redirect_to post_url(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.update(params[:id],post_params)
    redirect_to post_url(@post)
  end

  private
  def post_params
    params.require(:post).permit(:title,
    :user,:post_id, :content)
  end
end
