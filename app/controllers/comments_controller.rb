class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new 
  end

  def show
    puts params
    @comment = Comment.find params[:id]
  end


end
