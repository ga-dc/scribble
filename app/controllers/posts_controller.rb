class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :action => :index
    end
  end

  def new
    @posts = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => :index
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :author)
  end

end
