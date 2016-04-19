Post.destroy_all
Comment.destroy_all

post1 = Post.create(title: "WDI Day One", body: "Everything is scary and amazing, I'm in for a long journey")
post2 = Post.create(title: "First Homework Assignment", body: "My brain hurts, omg someone save me!")
post3 = Post.create(title: "Project Number 1", body: "How did I do this? I'm surprised haha")

Comment.create(comment: "wow that's so cool", post: post1)
Comment.create(comment: "wow that's so pretty", post: post1)
# post1.comments.create(comment: "wow that's so cool")
Comment.create(comment: "hahaha", post: post2)
Comment.create(comment: "you are amazing that's why", post: post3)
