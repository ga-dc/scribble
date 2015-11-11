class PostsController < ApplicationController

def index
  @posts = Post.all
end

def create
  @post = Post.create!(post_params)
  #REDIRECT
  redirect_to post_path(@post)
end

def new
  @post = Post.new
end

def edit
  @post = Post.find(params[:id])
end

def show
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  #REDIRECT
  redirect_to post_path(@post)
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  #REDIRECT
  redirect_to posts_path()
end


end
