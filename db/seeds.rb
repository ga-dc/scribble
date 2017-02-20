Post.destroy_all
Comment.destroy_all

posts = Post.create([
    {title: "Post 1", author: "Douglas Adams", post_content: "Life, the Universe, and Everything"},

    {title: "Post 2", author: "Jonathan Franzen", post_content: "Amurica"}
  ])


comments = Comment.create([
    {commenter: "Dave", comment_content: "Blah1", commenter_nationality: "USA", post: posts[0]},

    {commenter: "Dave", comment_content: "Blah2", commenter_nationality: "USA", post: posts[0]},

    {commenter: "Juan", comment_content: "BlahBlah1", commenter_nationality: "Benin", post: posts[1]}
  ])
