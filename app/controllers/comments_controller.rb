class CommentsController < ApplicationController
  #index
  def index
  @post = Post.find(params[:post_id])
  @comment = Comment.all
  end

  def new
     @post = Post.find(params[:post_id])
     @comment = Comment.new

   end

   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(comment_params)
     redirect_to "/posts/#{@post.id}"
   end


   def edit
     @post = Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
   end

   # update
     def update
       @post = Post.find(params[:post_id])
       @comment = @post.comments.find(params[:id])
        @comment.update(comment_params)

       redirect_to post_path(@post)
     end


def destroy
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment.destroy

redirect_to "/posts/#{@post.id}"

end



    private
   def comment_params
     params.require(:comment).permit(:content, :author, :post_id)
   end
end
