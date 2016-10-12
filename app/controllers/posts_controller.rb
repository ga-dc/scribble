class PostsController < ApplicationController

def index
  @posts = Post.all
end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)

  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

def update
  @post = Post.update(params[:id])

  if @post.update(post_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
end

def post_params
  params.require(:post).permit(:title, :body)
end

end
