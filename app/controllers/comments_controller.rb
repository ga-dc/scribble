class CommentsController < ApplicationController
	def index
		@blog = Blog.find(params[:blog_id])
	end

	def new
		@blog = Blog.find(params[:blog_id])
		@new_comment = Comment.new
	end

	def create
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comment.create(comment_params)
		reirect_to blog_path(@blog)
	end

	def show
		@blog = Blog.find(params[:blog_id])
	end

	def edit
		@blog = Blog.find(params[:blog_id])
	end

end