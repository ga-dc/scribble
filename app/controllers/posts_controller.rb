class PostsController < ApplicationController
    
  def index
    @posts = Post.all
  end

  def new
    @new = Post.all
  end

  def create
    @posts = Post.create!(posts_params)
    redirect_to "/posts/#{@posts.id}"
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  private
  def post_params
    params.required(:posts).permit(:title, :author, :seat) 
  end

end
