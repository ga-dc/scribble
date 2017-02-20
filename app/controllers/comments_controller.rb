class CommentsController < ApplicationController

def new
  @comment = Comment.new
end

def create
  @comment = Comment.create(comment_params)
  redirect_to posts_path
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to posts_path
end

private
def comment_params
  params.require(:comment).permit(:body, :author)
end

end
