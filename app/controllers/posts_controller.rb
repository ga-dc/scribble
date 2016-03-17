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
    #do i need this???
    @post = Post.new
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
    @post = Post.find(params[:id])
    # this conditional checks to see if params went thru correctly.
    # gotta have new params to update with
    if @post.update(post_params)
      redirect_to @post
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end



end
