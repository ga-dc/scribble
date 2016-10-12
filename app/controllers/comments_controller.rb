class CommentsController < ApplicationController

def index
  # @comments = Comments.where(:post_id , params(:id))
  @post=Post.find(params[:post_id])
end


end # CommentsController
