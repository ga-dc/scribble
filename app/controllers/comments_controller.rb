class CommentController < ApplicationController

  #index
  def index
  @comments = Comment.all
  end

  #new
  def new
    @comments = Comment.new
  end

  #show
  def show
    @comments = Comment.find(params[:id])
  end


end
