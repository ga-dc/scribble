class CommentsController < ApplicationController

  def index
  end

  def create
    @comments = Comment.create
  end

  def new
    @comments = Comment.new
  end

  def edit
    @comments = Comment.edit
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

end
