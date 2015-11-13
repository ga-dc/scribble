class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  #auth check before creating/editing/etc
  before_action :authenticate_user!, except: [:show, :index]
  #the index function
  def index
    @posts = Post.all
  end
  #shows a specific post, also shows comments under it.
  def show
    @post = Post.find(params[:id])
    @tag = Tag.new
    @comments = @post.comments
  end
  #links to the new post form
  def new
    @post = Post.new
  end
  #creates a new post
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post was successfully created."
      redirect_to @post
    else
      flash[:notice] = "Post wasn't successfully created."
      render :new
    end

  end
  #deletes a post, current_user must be the post's author to delete it
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  #links to edit form
  def edit
    @post = Post.find(params[:id])
  end
  #updates a post here
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  #strong param check
  private
  def post_params
    params.require(:post).permit(:text, :title)
  end
end
