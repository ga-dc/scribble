class PostsController < ApplicationController
  #index
  def index
    @posts = Post.all
  end

  #show
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  #new
  def new
    @post = Post.new
  end

  #create
  def create
    @post = Post.create!(post_params)

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  private #private method for permitting specific fields when submitting a form and persisting data to db
  def post_params
    params.require(:post).permit(:title, :content, :date)
  end

end
