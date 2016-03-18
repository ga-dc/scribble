class PostsController < ApplicationController

    def index
      @posts = Posts.all
    end

    def create
      @post = Posts.create(comment_params)
      redirect_to "/comments/#{@artist.id}"
    end

    def show
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      @post.update(post_params)
    end

    def delete
      @post = Post.find(prams[;id])
      @post.destroy
    end

  end
