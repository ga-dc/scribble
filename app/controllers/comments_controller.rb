class CommentsController < ApplicationController
#   post_comments GET    /posts/:post_id/comments(.:format)          comments#index
#               POST   /posts/:post_id/comments(.:format)          comments#create
# new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
# edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
#  post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
#               PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#               PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#               DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy

  def index
    redirect_to post_path(params[:post_id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)
    redirect_to post_path(params[:post_id])
  end



  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
