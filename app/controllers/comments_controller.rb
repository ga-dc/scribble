class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def create
  @post = Post.find
end

def edit
  @comment = Comment.find(params[:id])
end


end
