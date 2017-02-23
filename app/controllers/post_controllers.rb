def create
  @post = current_user.posts.create!(post_params)
  redirect_to post_path(@post)
end
