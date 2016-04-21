class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_comment_path, notice: "Comment successfully created!"
    else
      render 'new'
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @post = @comment.post
    if @comment.update(comment_params)
      redirect_to @post, notice: "Comment successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    redirect_to @post, notice: "Comment successfully destroyed!"
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :text, :post_id)
    end

end
