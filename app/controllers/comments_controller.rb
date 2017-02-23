class CommentsController < ApplicationController
  #index
  def index
  @posts = Post.find(params[:post_id])
  @comment = Comment.all
  end

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

   # update
     def update
       @posts = Post.find(params[:post_id])
       @comment = Comment.find(params[:id])
       @comment.update(comment_params)

       redirect_to "/posts/#{@posts.id}"
     end


def destroy
  @posts = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment.destroy

redirect_to "/posts/#{@posts.id}"

end



    private
   def comment_params
     params.require(:comment).permit(:content, :author, :post_id)
   end
end
