class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
  end

  #show
  def show
    @post = Post.find(params[:id])
  end


  # edit
  def edit
    @post = Post.find(params[:id])
    @post = Post.find(params[:id])
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to posts_path
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:author, :post_title, :post_text, :created_on, :updated_on)
  end
end
