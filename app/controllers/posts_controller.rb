class PostsController < ApplicationController

  #index
  def index
  @posts = Post.all
  end

  #new
  def new
    @posts = Post.new
  end

  #show
  def show
    @posts = Post.find(params[:id])
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to post_path(@post)
  end


  private
 def post_params
   params.require(:post).permit(:title, :author, :content, :likes)
 end

end
