class PostsController < ApplicationController
    def index

  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create


  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit

  end


  # update
  def update

  end

  # destroy
  def destroy

  end

end
