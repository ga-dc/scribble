class PostsController < ApplicationController

  def index
    @posts= Post.all.order(:id)

  end

  def new
    @post= Post.new
  end

  def create
    @post = Post.create!(post_params)

    redirect_to "/posts"
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end

  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to "/posts"
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts"
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :post_id)
    end
end
