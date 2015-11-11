class CommentsController < ApplicationController
  def index
    @post = Post.find_by(id: params[:post_id])
    @comments = @post.comments
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = Post.find_by(id: params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = Comment.create(comment_params)
    redirect_to post_comment_path(@post, @comment)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @Post = Post.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @Post = @comment.post
    @comment.destroy

      redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:username,
    :comment_text, :edited_at, :posted_at, :post_id
    )
  end
end
