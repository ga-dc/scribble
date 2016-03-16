class PostsController < ApplicationController
# customary in rails to put actions in order like:
# index, show, new, edit, create, update, destroy
  def index
    @posts = Post.all
  end

  def show
    #shows individual posts
    #paths to individual posts will be created that look like:
    #posts/:id
    @post = Post.find(params[:id])
  end

  def new

  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    # upon saving with the submit button, rails triggers post request and posts#create action
    # params for request are whitelisted to prevent mass assignment
    @post = Post.new(post_params)
    #params for request are saved to @post, output is redirected to the posts#show action
    @post.save
    redirect_to @post
  end

  def update

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end



end
