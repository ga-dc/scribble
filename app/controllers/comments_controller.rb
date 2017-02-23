class CommentsController < ApplicationController

  def new
     @posts = Post.find(params[:post_id])
     @comment = Comment.new

   end

   def create
     @posts = Post.find(params[:post_id])
     @comment = @posts.comments.create(comment_params)
     redirect_to "/posts/#{@posts.id}"
   end


   def edit
     @posts = Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
   end


def destroy
  @posts = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comments.destroy

redirect_to "/posts/#{@posts.id}"

end



    private
   def comment_params
     params.require(:comment).permit( :content, :author)
   end
end
