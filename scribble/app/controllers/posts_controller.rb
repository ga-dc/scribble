class PostsController < ApplicationController

before_action :set_post, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

def index
  if current_user
    @posts = current_user.posts
  else
    @posts = Post.all
  end
end

def new
  @post = Post.new
end

def create
  @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post, notice: "post created successfully!"
    else
      render 'new', alert: "an error occurred, please try again"
    end
end
#show
def show
  @post = Post.find(params[:id])
  @comments = @post.comments
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end

private
  def post_params
    params.require(:user).permit(:title, :message, :image_url)
  end

end
