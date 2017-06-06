class PostsController < ApplicationController

	def index
		@posts = Post.all.order(:created_at).reverse
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "New Post Created"
			redirect_to posts_path
		else
			flash[:alert] = "Error! text field can't be blank"
			redirect_to new_post_path
		end
		
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments.where(params[:id]== :post_id)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)

		redirect_to posts_path(@post)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private
		def post_params
			params.require(:post).permit(:username,:subject,:content)
		end

end