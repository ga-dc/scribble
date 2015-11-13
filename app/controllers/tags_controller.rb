def add
  @post = Post.find(params[:id])
  @post.categories.create(name: "TOS")
end
