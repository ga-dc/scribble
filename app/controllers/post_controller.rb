  class PostsController < ApplicationController

      def index
        @post = Post.all
      end

      def show
        @post = post.find params [:id]
      end

      def new
      end
      def create
      end


  end
