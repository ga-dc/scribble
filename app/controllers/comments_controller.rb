class CommentsController < ApplicationController
	def index
		@blog = Blog.find(params[:blog_id])
	end

	def new
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.new
	end

	def create
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.create!(comment_params.merge(blog: @blog))
		# @comment = @blog.comments.create(comment_params)
		redirect_to blog_comment_path(@blog, @comment.id)
	end

	def show
		@blog = Blog.find(params[:blog_id])
		# @comment_blog_id = params[:blog_id]
		@comment = Comment.find_by(blog_id = @comment_blog_id)
	end

	def edit
		@blog = Blog.find(params[:blog_id])
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter_name, :content, :blog_id)
	end

end