class PostsController < ApplicationController
# index
def index
  @posts = Post.all
end

# create
def create
  @post = Post.create!(post_params)

  redirect_to post_path(@post)
end

# show
def show
  @post = Post.find(params[:id])
  @comments = @post.comments
end

private
def post_params
  params.require(:post).permit(:title, :content, :author, :img_url)
end
end
