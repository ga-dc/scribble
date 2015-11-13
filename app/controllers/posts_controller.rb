class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @tag = Tag.new
    @comments = @post.comments
  end
  def new
    @post = Post.new
  end
  def create
    @post = current_user.posts.create(post_params)
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  def edit
    @post = Post.find(params[:id])
  end
  def add_tag
    @post = Post.find(params[:id])
    if (!Category.find_by(params[:descrip]))
      new_cat = Category.create!(params[:descrip])
      @tag = @post.tags.create!(new_cat)
    # elsif (Category.find_by(descrip) && )
    end


  end
  def remove_tag
  end
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  private
  def post_params
    params.require(:post).permit(:author, :text, :title)
  end
  def cat_params

  end
end
