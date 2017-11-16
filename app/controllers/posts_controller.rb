class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create!(post_params)
    if @post.save
      redirect_to post_path(@post), notice: "#{@post.title} was succesfully created."
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post), notice: "#{@post.title} was successfully updated."
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path, notice: "#{@post.title} was successfully deleted."
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :content)
  end
end
