class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]
# index / show the post index page
  def index
    # @posts = Post.all
    @posts = current_user
  end

# new / for making new post part 1
  def new
    @posts = Post.new
  end

# create / for making new post part 2
  def create
    # @posts = Post.create!(post_params)
    @posts = current_user.posts.create(post_params)
    redirect_to post_path(@posts)
  end

#show / for showing the post page
  def show
    @posts = Post.find(params[:id])
  end

# edit / edit a post part 1
  def edit
    @posts = Post.find(params[:id])
  end

# update / edit a post part 2
  def update
    @posts = Post.find(params[:id])
    @posts.update(post_params)

    redirect_to post_path(@posts)
  end

# destroy/ delete a post
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy

    redirect_to posts_path
  end
  # strong params for the create new post form
  private
  def post_params
    params.require(:post).permit(:title, :article, :date, :user_id)
  end
end
