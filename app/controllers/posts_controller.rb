class PostsController < ApplicationController

  def index
    @post = Post.all.order(:id)
    # @post = Post.all.order(:id).reverse
  end

        # #######################################
        # SHOW ME POSTS
  def show
    @post = Post.find(params[:id])
  end

        # #######################################
        # MAKE ME A POST
        #   SHAZAM!  YOURE A POST
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      redirect_to "/posts/new"
    end
  end


        # #######################################
        # CHANGE THIS DUMB POST
        #
        # def edit
        #   @post = Post.find(params[:id])
        # end
        #
        # def update
        #   @post = Post.find(params[:id])
        #   @post.update(params[:post])
        #   redirect_to "/posts/#{@post.id}"
        # end
        #
        # #######################################
        # DESTROY THIS DUMB POST
        # def destroy
        #   @post = Post.find(params[:id])
        #   @post.destroy
        #   redirect_to "/"
        # end
        #

end
