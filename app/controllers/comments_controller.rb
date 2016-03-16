class CommentsController < ApplicationController


  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end




  def create
    @post = Post.find(params[:post_id])

    @comment = @post.comments.create(comment_params)
  end



  def destroy
    @post = Post.find(params[:id])
    @comment = @post.comment.find(params[:id])

    @comment.destroy




  end






  def comment_params
    params.require(:comment).permit(:content)
  end

end
