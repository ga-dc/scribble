class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @artist = Artist.create!(post_params)
    redirect_to artist_path(@post)
  end

  def show
    @post = Artist.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @post = Artist.find(params[:id])
    @post.destroy
    redirect_to posts_path()

    private
    def post_params
      params.require(:post).permit(:title, :author, :post)
    end

end
