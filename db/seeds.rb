
Comment.destroy_all
Post.destroy_all

comments = Comment.create([
    {body: "Animal Farm"},
    {body: "Fake Harry Potter"}
])
posts = Post.create([
  {title: "Matt", body: "Tight!"}
])
