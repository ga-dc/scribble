class CommentsController < ApplicationController

  def index
  @comment = Comment.all
  render :index
end

  def create
    @comment = Comment.create!(comment_time: params[:comment_time], comment_email: params[:comment_email], comment: params[:comment])
    redirect_to "/comments/#{@comment.id}"
  end


end
