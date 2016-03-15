class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body, :author))
    if @post.save
      redirect_to :action => :index
    end
  end

  def new
    @posts = Post.new
  end

  def edit
    @posts = Post.edit
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

end
