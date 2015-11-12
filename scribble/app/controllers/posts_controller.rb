class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  #show
  def show
    @post = Post.find(params[:id])
    redirect_to "/"
  end

  # new
  def new
    @post = Post.new
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end

  # create
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/"
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/"
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
