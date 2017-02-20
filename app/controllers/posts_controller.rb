class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		flash[:notice] = "Post Updated Successfully"
		redirect_to @post
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = "Post Successfully Deleted"
		redirect_to posts_path
	end

	private
	def post_params
		params.require(:post).permit(:name, :post)
	end
end