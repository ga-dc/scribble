Post.destroy_all
Comment.destroy_all


posts = Post.create([
  {title: "Travel", author:"Mike", body: "I like to travel to places!"},
  {title: "Space", author: "Elon Musk", body: "I will transport people to mars."},
  {title: "silicon valley", author: "typical_coder122", body: "I integrate things"}
])

comments = Comment.create([
  {author: "Friend of Mike", body: "uh, cool post dude", post: posts[0]},
  {author: "Jeff Bezos", body: "me first tho", post: posts[1]}
])
