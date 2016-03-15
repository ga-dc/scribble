class PostsController < ApplicationController
def index #how does rail know how to render?
  # Find all the artists in our database and save to a variable
  @posts = Post.all
  render :index #explicit rendering
end

def show
  @post = Post.find(params[:id]) # params are a hash, grabbing the id to access. 3 ways to get values into params(url, form submission, query string/special options to url)for one particular artist
end

def new
  @post = Post.new
end

def create
  # binding.pry #look at value of params after submit a form
  @post = Post.create! artist_params #(name: , nationality: , photo_url: ) in artist param
  #now we need another request so use redirect
  redirect_to "/posts/#{@post.id}" # triggers new (get) request and send to showpage after artist is created
end

private #method to only exist within controller method
def artist_params
  params.require(:artist).permit(:name, :nationality, :photo_url)
end
end
