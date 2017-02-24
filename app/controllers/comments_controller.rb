class CommentsController < ApplicationController
#
# def index
#   @post = Post.find(params[:post_id])
#   @comments = @post.comments
# end

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
  @comment = @post.comments.find(params[:id])
end

def update
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment.update(comment_params)
  redirect_to post_path(@post)

  # redirect_to post_comments_path(@post, @comment)
end

def destroy
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment.destroy

  redirect_to  post_path(@post)
end

private
  def comment_params
    params.required(:comment).permit(:content)
  end

end
