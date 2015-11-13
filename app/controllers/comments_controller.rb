class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:post_id])
    @comment = Comment.new
  end
  def create
    @article = Article.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))
    redirect_to post_path(@post)
  end
  def edit
    @article = Article.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  def update
    @article = Article.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user:current_user))
    redirect_to post_path(@post)
  end
  def destroy
    @article = Article.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@article)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
