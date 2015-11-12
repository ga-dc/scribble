class CommentsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


	def index
		@blog = Blog.find(params[:blog_id])
	end

	def new
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.new
		@user = current_user
	end

	def create
		@blog = Blog.find(params[:blog_id])
		@user = current_user
		@comment = Comment.create!(comment_params.merge(blog: @blog, user: @user))
   		redirect_to blog_path(@blog)
    end

	def show
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.find_by(blog_id = @comment_blog_id)
	end

	def edit
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.find(params[:id])
		@user = current_user
	end

 	def update
	    @comment = Comment.find(params[:id])
	    @blog = Blog.find(params[:blog_id])
		@user = current_user
	    @comment.update(comment_params.merge(blog: @blog, user: @user))
	    redirect_to blog_path(@blog)
 	end

 	def destroy
	    @blog = Blog.find(params[:blog_id])
	    @comment = Comment.find(params[:id])
	    @comment.destroy
	    redirect_to blog_path(@blog)
  	end

	private
	def comment_params
		params.require(:comment).permit(:user_id, :content, :blog_id)
	end

end