class BlogController < ApplicationController
	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def create
    	@blog = Blog.create!(blog_params)
    	redirect_to blog_index_path
	end

	private
 	def blog_params
    	params.require(:blog).permit(:author_name, :subject, :content)
  end
end
