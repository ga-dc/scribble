# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE ALONG WITH PREVIOUS OFFICE HOURS. SEE REFERENCES.md FILE FOR LINK -->
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
        @post = Post.create!(post_params)
        redirect_to "/posts/#{@post.id}"
      end
    
      def edit
        @post = Post.find(params[:id])
      end
    
      def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to "/posts/#{@post.id}"
      end
    
      def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to "/posts"
      end

      private
      def post_params
        params.require(:post).permit(:topic, :author, :content)
      end
    end
# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE ALONG WITH PREVIOUS OFFICE HOURS. SEE REFERENCES.md FILE FOR LINK