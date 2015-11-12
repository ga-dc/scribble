class BlogsController < ApplicationController

	# before_action :set_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@blogs = Blog.all
		# if current_user
		# 	@yourblogs = current_user.posts
		# end
	end

	def new
		@user = current_user
		@blog = Blog.new
	end

	def create
		@user = current_user
    	@blog = Blog.create!(blog_params.merge(user: @user))
    	redirect_to blog_path(@blog)
	end

	def show
		@blog = Blog.find(params[:id])
		@comments = @blog.comments
		@user = @blog.user
	end

	def edit
		@blog = Blog.find(params[:id])
		@user = current_user
	end

	def update
   	 	@blog = Blog.find(params[:id])
   	 	@user = current_user
   		@blog.update(blog_params.merge(user: @user))
		redirect_to blog_path(@blog)
	end

	def destroy
	    @blog = Blog.find(params[:id])
	    @blog.destroy
	    redirect_to blogs_path
  	end

	private
 	def blog_params
    	params.require(:blog).permit(:user_id, :subject, :content)
 	end

end
