Post.destroy_all
Comment.destroy_all

post1 = Post.create(title: "WDI Day One", body: "Everything is scary and amazing, I'm in for a long journey")
post2 = Post.create(title: "First Homework Assignment", body: "My brain hurts, omg someone save me!")
post3 = Post.create(title: "Project Number 1", body: "How did I do this? I'm surprised haha")

Comment.create(body: "wow that's so cool", post: post1)
Comment.create(body: "wow that's so pretty", post: post1)
Comment.create(body: "hahaha", post: post2)
Comment.create(body: "you are amazing that's why", post: post3)
