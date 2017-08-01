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


private
def comment_params
  params.require(:comment).permit(:name, :body)
end
end
