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

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create!(post_params)
    # redirect_to posts_path
    redirect_to post_path @post
  end

  def update
    #this is to edit as create is to new
    @post = Post.update(post_params)
    redirect_to post_path @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
