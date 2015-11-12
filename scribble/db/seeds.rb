Post.destroy_all
Comment.destroy_all

post_one = Post.create()

post_one.comments.create()
