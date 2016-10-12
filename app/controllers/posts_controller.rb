class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
  end

  # show
  def show
    @post = Post.find params[:id]
  end

  #new
  def new
    @post = Post.new
  end

  #create
  def create
    @post = Post.create!(post_params)

    redirect_to post_path(@post)
  end

  #edit

  #update

  #destroy
  def destroy
    @post = Post.find params[:id]
    @post.destroy

    redirect_to posts_path
  end

  #private
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
