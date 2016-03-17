class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def show
    puts params
    @post = Post.find params[:id]
  end


end



rails/info/routes
config/routes.rb
