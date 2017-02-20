class CommentsController < ApplicationController


## Create new comments
def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  redirect_to post_path(@post)

end

# delete existing comment
def destroy
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
  @comment.destroy

  redirect_to post_path(@post)

end

# allows new comment method to take in author and content
private
def comment_params
  params.require(:comment).permit(:author, :content)
end


end
