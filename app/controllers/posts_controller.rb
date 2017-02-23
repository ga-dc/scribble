class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.all
    # @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(params[:id])

    redirect_to posts_path(@post)
  end


  def update
    @post = Post.find(params[:id])
    @post.update(params[:id])

    redirect_to posts_path(@post)
  end


  # private
  #   def post_params
  #     params.require(:post).permit(:title, :body)
  #   end

end
