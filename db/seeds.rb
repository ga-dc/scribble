Post.destroy_all
Comment.destroy_all

Post.create(title: "WDI Day One", body: "Everything is scary and amazing, I'm in for a long journey")
Post.create(title: "First Homework Assignment", body: "My brain hurts, omg someone save me!")
Post.create(title: "Project Number 1", body: "How did I do this? I'm surprised haha")

Comment.create(comment: "wow that's so cool", post_id: 1)
Comment.create(comment: "hahaha", post_id: 2)
Comment.create(comment: "you are amazing that's why", post_id: 3)
