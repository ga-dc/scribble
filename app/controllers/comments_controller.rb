class CommentsController < ApplicationController

  #index
  def index
    @post = Post.find params[:id]
    @comments = @post.comments.all
  end

  # show
  #edit
  #new
  #create
  #update
  #destroy

  #private
end
