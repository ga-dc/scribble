class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
   end

   # new
   def new
     @post = Post.find(params[:post_id])
     @comment = @post.comments.new
   end

   # create
   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(comment_params)
     redirect_to post_path(@post)
   end

   #show
   def show
     @comment = Comment.find(params[:id])
   end

   # edit
   def edit
     @comment = Comment.find(params[:id])
     @post = post.find(params[:post_id])
   end

   # update
   def update
     @comment = Comment.find(params[:id])
     @comment.update(comment_params)

     redirect_to comments_path(@comment)
   end

   # destroy
   def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy

     redirect_to comments_path
   end

   private
   def comment_params
     params.require(:comment).permit(:comment_text, :author)
   end
 end
