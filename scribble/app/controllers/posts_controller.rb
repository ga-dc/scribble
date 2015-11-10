class PostsController < ApplicationController

def index
end

def new
end

def create
end

def edit
end

def update
end

def destroy
end

private
  def posts_params
    params.require(:post).permit(:title, :message, :image_url, :author)
  end

end
