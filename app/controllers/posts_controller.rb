class PostsController < ApplicationController

  def index
    @post = Post.all
    render :index
  end

  def create
    @post = Post.create!({name: params[:name], author: params[:author], author_email: params[:author_email], post_date: params[:post_date], post: params[:post], post_tag: params[:post_tag], category: params[:category]})
    redirect_to "/posts/#{@post.id}"
  end
end
