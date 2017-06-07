class PostController < ApplicationController
	def index
		@post = Post.find(params[:id])
	end
	def new 
		@post = Post.new
	end 
	def create 
		@post = Post.create(post_params)
			redirect_to post_path(@post)
	end
	def show 
		@post = Post.find(params[:id])
	end
	def destroy 
	@post = Post.find(params[:id])
    	@post.destroy
    		redirect_to posts_path
	end 
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
			@post.destroy
				redirect_to posts_path
	end
end