Post.destroy_all
Comment.destroy_all

Post.create(title: "Mohamed", body: "Is the worst...")
Post.create(title: "Pants", body: "Are somehow worse than Mohamed")
Comment.create(comment_text: "Like barely though...", post_id: 2)
