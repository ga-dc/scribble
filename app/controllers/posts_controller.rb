class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to posts_path
  end

  def add_tag
    @post = Post.find(params[:id])
    @post.tag.create!(categories_id: params[:category])
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  #private
  #def comment_params
    #params.require(:comment).permit(:title, :content, :post_id)
  #end

end
