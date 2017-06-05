class CommentsController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end

	def create
		@post = Post.find_by_id(params[:post_id])
		@comment = @post.comments.create!(comm_params)

		redirect_to post_path(@post)
	end
	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end

	def update
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.update(comm_params)

		redirect_to post_path(@post)
	end

	def destroy
		
	end

private
	def comm_params
		params.require(:comment).permit(:username,:text)
	end	
end