class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to @comment
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(comment_params)
		flash[:notice] = "Comment Updated Successfully"
		redirect_to @comment
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:notice] = "Comment Successfully Deleted"
		redirect_to comments_path
	end

	private
	def comment_params
		params.require(:comment).permit(:name, :comment, :post_id)
	end
end