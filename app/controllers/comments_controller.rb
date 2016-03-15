class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_comments_path(@post, @comment)
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Commment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Commment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Commment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_comments_path(@post, @comment)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Commment.find(params[:id])
    @comment.destroy

    redirect_to post_comments_path( @post )
  end
  private
  def comment_params
    params.require(:comment).permit(:author, :comment_email,  :comment_content, :comment_email, :post_id:)
  end
end
