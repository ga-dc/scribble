class CommentsController < ApplicationController

def edit
  @comment = Comment.find(params[:id])
end

def new
  @comment = Comment.new
end

end
