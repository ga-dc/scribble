class CommentsController < ApplicationController

def new
  @comment = Comment.new
end

def create
  @comment = Comment.create(comment_params)
  @post = Post.find(params[:id])
  redirect_to "posts/#{@post.id}"
end

private
  def comment_params
    params.required(:comment).permit(:content)
  end

end
