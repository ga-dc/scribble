class PostsController < ApplicationController

  #index
  def index
    @posts = Post.all
  end

  # show
  def show
    @post = Post.find params[:id]
  end

  #edit
  #new
  #create
  #update
  #destroy

  #private

end
