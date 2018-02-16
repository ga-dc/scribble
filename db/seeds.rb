Post.destroy_all
Comment.destroy_all

Post.create(
  author: "Zola",
  title: "First Post!",
  content: "Post content ..."
)

Comment.create(
  author: "John",
  content: "first comment!",
  post_id: 1
)