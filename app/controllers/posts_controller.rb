class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # @artist = Artist.find_by(id: params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    render :show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    # redirect_to "/posts"
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
    # params.require(:artist).permit(:name, :photo_url, :nationality)
  end

end
