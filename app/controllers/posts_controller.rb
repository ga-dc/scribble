class PostsController < ApplicationController

  def index #homepage, essentially
    @posts = Post.all
  end

  def new #new blog post page
    @post = Post.new
  end

  def create #save blog post
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  def show #individual blog post page
    @post = Post.find(params[:id])
  end

  def edit #edit existing blog post
    @post = Post.find(params[:id])
  end

  def update #save edit updates
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy #delete blog post
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :date_created, :date_modified)
  end

end
