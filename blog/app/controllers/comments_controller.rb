class CommentsController < ApplicationController
  #index
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(post_params)
    redirect_to post_path(@comment)
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end


end
