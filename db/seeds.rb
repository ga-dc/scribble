Post.destroy_all
Comment.destroy_all

Post.create(title: "Post 1", post_author: "Craig", post_content: "Rails helpers allow us to take complexity out of the view and modularize our HTML generation.")

Post.create(title: "Post 2", post_author: "Craig2", post_content: "It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It makes the assumption that there is the best way to do things, and it's designed to encourage that way - and in some cases to discourage alternatives. - Ruby on Rails guide")
