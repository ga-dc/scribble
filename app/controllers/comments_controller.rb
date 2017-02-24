class CommentsController < ApplicationController
  # actions will go here
  def new
    @comment = Comment.new
  end

  def comments
  end
end
