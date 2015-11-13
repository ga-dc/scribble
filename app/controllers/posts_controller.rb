class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    authenticate_user!
    @post = Post.new
  end

  def create
    authenticate_user!
    @post = current_user.posts.create!(post_params)
    redirect_to post_path(@post)
  end

  def edit
    authenticate_user!
    @post = Post.find(params[:id])
  end

  def update
    authenticate_user!
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def show
    authenticate_user!
    @post = Post.find(params[:id])
  end

  def destroy
    authenticate_user!
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
