class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  redirect_to post_path(@post)
end

def edit
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
end

def update
  @post = Post.find(params[:post_id])
  @comment = @post.comments.update(comment_params)
  redirect_to post_path(@post)
end


private
def comment_params
  params.require(:comment).permit(:body)
end

end
