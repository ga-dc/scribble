class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  # edit
  def edit

  end

  # update
  def update

  end

  # destroy
  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
