class PostsController < ApplicationController
  # posts#index
  def index
    @posts = Post.all
  end
  # posts#show
  def show
    @post = Post.find(params[:id])
  end
  # posts#create
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end
  # posts#new
  def new
    @post = Post.new
  end
  # posts#edit
  def edit
    @post = Post.find(params[:id])
  end
  # posts#update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  # posts#destroy
  def destroy
    Post.delete([params[:id]])
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :post_body)
  end

end
