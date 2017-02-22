class CommentsController < ApplicationController

def index
  @post_comments = Comments.all
end

def new
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new
end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  redirect_to @comment
end

def show
  @comment = Comment.find(params[:id])
end

def edit
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
end

def update
  @comment = Comment.find(params[:id])
  @comment.update(comment_params)
  redirect_to @comment
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to comments_path
end

private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
