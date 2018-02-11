class CommentsController < ApplicationController
  
  # new
  def new
    @post = Post.find(params[:artist_id])
    @comment = @post.comments.new
  end

  # create
  def create
    @post = Post.find(params[:artist_id])
    @comment = @post.comment.create!(comment_params)

    redirect_to post_path(@post)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:artist_id])
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @post = Post.find(params[:artist_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_comment_path(@post, @comment)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@comment.post)
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content)
  end
end
