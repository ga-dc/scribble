class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.create! post_params
        redirect_to post_path(@post)
    end

    def update
        @post = Post.edit! post_params
        redirect_to "/posts"
    end

    def destroy
    end


    private
    def post_params
        params.require(:post).permit(:title, :content, :created_at)
    end
end
