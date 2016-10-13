class CommentsController < ApplicationController

  def index
    @post=Post.find(params[:post_id])

  end


  def new
    @post=Post.find(params[:post_id])
    @comment = Comment.new
  end #new

  def create
    @post=Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params) # thanks to andy

    @comment.save
    redirect_to @comment.post
  end

  def edit
      @comment= Comment.find(params[:id])
      @post=Post.find(params[:post_id])

  end

  def update
    @post = Post.find(params[:post_id])
    @comment= @post.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment= @post.comments.find(params[:id])
    @comment.destroy

   redirect_to posts_path
  end


  private
  def comment_params
    params.require(:comment).permit(:comment, :user_id,:enabled, :date,
    :post_id)
  end


end # CommentsController
