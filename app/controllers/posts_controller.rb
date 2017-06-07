class PostsController < ApplicationController

  # before_action :authenticate_user!

  def index
    @posts =  Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # @post.update(post_params)

    if @post.user == current_user
      @post.update!(post_params)

    else
       flash[:alert] = "Only the author of the post can update"
    end
    redirect_to post_path(@post)
  end


  def new
    @post = Post.new
  end

  def create
    # @post = Post.create!(post_params)
    @post = current_user.posts.create!(post_params)

    redirect_to post_path(@post)
  end


  def destroy
    # @post =  Post.find(params[:id])
    # @post.destroy
    # redirect_to posts_path

  @post = Post.find(params[:id])
  if @post.user == current_user
    @post.destroy

  else
     flash[:alert] = "Only the author of the post can delete"
  end
  redirect_to posts_path
  end

  private
   def post_params
     params.require(:post).permit(:title, :body)
   end
end
