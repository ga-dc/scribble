class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.create!(post_params)
    render post_path
  end

  def update
    @comment = Comment.find(params[:id]).update(post_params)
  end

  def destroy
    @comment = Comment.find(params[:id]).destroy
    render post_path
  end
end
