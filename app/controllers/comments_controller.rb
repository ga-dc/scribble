class CommentsController < ApplicationController

def new
  @post = Post.find(params[:id])
  @comment = @post.comments.new
end
def create
  @post = Post.find(params[:id])
  @comment = @post.comments.create(comment_params)
  redirect_to post_path(@post)
end
def update
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
  @comment.update(comment_params)
  redirect_to post_path(@post)
end
def destroy
  @post = Post.find(params[:id])
  @comment = @post.comments.find(params[:id])
  @comment.destroy
  redirect_to post_path(@post)
end

end
