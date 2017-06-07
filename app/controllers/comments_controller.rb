class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new
end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)

  redirect_to post_path(@post)
end


def show
  @comment = Comment.find(params[:id])
end

def edit
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
end

def update
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment = @post.comments.update(comment_params)

  redirect_to post_path
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy

# !!!
  redirect_to post_path
end

private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
