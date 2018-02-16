class CommentsController < ApplicationController
  # https://git.generalassemb.ly/ga-wdi-exercises/hogwarts_rails
  # comments == charcters
  # posts has many comments, comments belong to one post. 
  # house == post
  # characters == comments
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(comment_params)
    redirect_to '/posts/#{@comment.post.id}'
  end

  def show
    @comment = Comment.find(params[:id])

  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to '/posts/#{@comment.post.id}'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/posts/#{@comment.post.id}'
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
