class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @comments = Comment.new
  end

  # create
  def create
    @comments = Comment.create!(comments_params)
    redirect_to comments_path(@comments)
  end

  #show
  def show
    @comments = Comment.find(params[:id])
  end

  # edit
  def edit
    @comments = Comment.find(params[:id])
  end


  # update
  def update
    @comments = Comment.find(params[:id])
    @comments.update(comments_params)

    redirect_to artist_path(@comments)
  end

  # destroy
  def destroy
    @comments = Comment.find(params[:id])
    @comments.destroy
    redirect_to comments_path
  end
end
