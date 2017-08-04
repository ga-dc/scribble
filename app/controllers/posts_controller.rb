class PostsController < ApplicationController

  # READ

  def index
    @posts = Post.all
  end

  # ------------------------
  # ------------------------

  def show
    @post = Post.find(params[:id])
  end


  # ------------------------
  # ------------------------


  def new
    @post = Post.new
  end


  def create
    @post =  Post.create!(passing_info)
    redirect_to post_path(@post)
  end


  # ------------------------
  # ------------------------


  def edit
    @post = Post.find(params[:id])

  end


  def update
    @post = Post.find(params[:id])
    @post.update(passing_info)
    redirect_to post_path(@post)
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path

  end



  private

  def passing_info
    params.require(:post).permit(:title, :text, :photo_url)
  end



  

  # -----------------------------------------

end # end of CommentsController class
