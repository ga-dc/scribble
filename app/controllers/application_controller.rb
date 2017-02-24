class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @posts = Post.all
end

private
def posts_params
  params.require(:post).permit(:title, :user, :content)
  end
end
