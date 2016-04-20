class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
def show
    @post = Post.find(params[:id])
end

def new
  @post = Post.new
end

def create
  @post = Post.create!(post_params)
  flash[:notice] = "Posted"
  redirect_to @post
end

def edit
  @post = Post.find(params[:id])
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  flash[:notice] = "Post deleted"
  redirect_to posts_path
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  flash[:notice] = "Post was updated."
  redirect_to post_path(@post)
end

  private
  def post_params
    params.require(:post).permit(:post, :body,:user)
  end


end
