class PostsController < ApplicationController

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
    redirect_to @post, notice: "New post created!"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path, notice: "#{@post.title}'s info is updated."
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "#{@post.title} is deleted."
  end


  private
  def post_params
    params.require(:post).permit(:user, :title, :photo_url, :content)
  end


end
