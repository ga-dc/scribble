class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end

  # create
  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  #show
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
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

  def comment_params
    params.require(:comment).permit(:commenter, :text)
  end
end
