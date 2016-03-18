class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    return unless authorized
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    return unless authorized
    @post = Post.find(params[:id])
  end

  def update
    return unless authorized
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    return unless authorized
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :post_content, :post_author)
  end

end
