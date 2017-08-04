class CommentsController < ApplicationController

def new
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new
end

# create
def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new(comment_params)
  if @comment.save
    flash[:notice] = "Comment saved successfully."
    redirect_to post_path(@post)
  else
    flash[:alert] = "ALERT! Song must have a title, album, and preview_url."
    redirect_to post_path(@post)
  end

end

def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    flash[:notice] = "Comment upated successfully."
    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:alert] = "Comment deleted!"
    redirect_to post_path(@post)
  end




private
def comment_params
  params.require(:comment).permit(:name, :body)
end
end
