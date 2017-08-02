class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(posts_params)

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
    if @post.user != current_user
      flash[:alert] = "Must be creator of post to edit!"
      redirect_to post_path(@post)
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.user == current_user
      @new_post = @post.update!(posts_params)
      flash[:notice] = "Updated Post"
    else
      flash[:alert] = "Must be creator of post to edit!"
    end
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy!
      flash[:notice] = "Deleted Post"
    else
      flash[:alert] = "Must be creator of post to delete!"
    end
    redirect_to posts_path
  end

private
  def posts_params
    params.require(:post).permit(:title, :content, :author, :photo_url, :link)
  end

end
