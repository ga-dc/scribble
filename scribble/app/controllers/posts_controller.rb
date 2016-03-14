class PostsController < ApplicationController
  # actions will go here
  def index
    @posts = Post.all
  end
end
