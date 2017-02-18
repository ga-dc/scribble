class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new_comment
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create_comment
    @post = Post.find(params[:id])
    @comment = Comment.create!(comment_params)

    redirect_to "/posts/#{@post.id}"
  end

  def new_post
    @post = Post.new
  end

  def create_post
    @post = Post.create!(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content, :likes, :post_id)
  end

  def post_params
    params.require(:post).permit(:title, :author, :content, :likes)
  end


end
