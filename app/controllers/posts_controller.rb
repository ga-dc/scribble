class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
      @post = Post.new
    end

    # create
    def create
      @post = Post.new(post_params)
      if @post.save
      redirect_to @post, notice: "'#{@post.title}' was successfully pulled from the void!"
      else
        flash[:alert] = "Try again with all necessary info!"
         render :new
       end
    end

  def show
    @post = Post.find(params[:id])
  end

  # edit
    def edit
      @post = Post.find(params[:id])
    end


    # update
    def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      if @post.save
        redirect_to @post, notice: "'#{@post.title}' has metamorphed from a shitty excuse for a post into a beautiful butterfly!"
      else
        flash[:alert] = "Try again with all necessary info!"
         render :edit
       end


    end

    # destroy
    def destroy
      @post = Post.find(params[:id])
      @post.destroy

      redirect_to posts_path, alert: "Post deleted"
    end



  private
    def post_params
      params.require(:post).permit(:title, :photo_url, :text)
    end
end
