class PostsController < ApplicationController
  private
  def create
    @Posts = Post.create!(post: params[:post])
    # grab the user input for params
    # create a new post from that input
    # redirect back to the index
    redirect_to :back
  end
  def index
    @posts = Post.all
    render :index

  end
end
