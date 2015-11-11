class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.new(params.require(:post).permit(:title,:text))
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  #show
  def show
    @post= Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end

  # destroy
  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to @post
end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
