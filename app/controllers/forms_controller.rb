class FormsController < ApplicationController

  def post
    # handle post requests here
  end

  def index
    @posts = Post.all
  end
end
