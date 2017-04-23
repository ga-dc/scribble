Comment.destroy_all
Post.destroy_all

post1 = Post.create(category: "Seed", title: "Seed Post 1", photo_url: "http://www.foodandphysique.com/UNIT%20PICS/blog%20pics/seed.png", text: "This is my first seed post for testing")
post2 = Post.create(category: "Seed", title: "Seed Post 2", photo_url: "http://www.foodandphysique.com/UNIT%20PICS/blog%20pics/seed.png", text: "This is my second seed post for testing")
post3 = Post.create(category: "Seed", title: "Seed Post 3", photo_url: "http://www.foodandphysique.com/UNIT%20PICS/blog%20pics/seed.png", text: "This is my third seed post for testing")

Comment.create(user_name: "twelve13", text: "good for you", post: post1)
Comment.create(user_name: "carolinecaroline", text: "totally agree", post: post1)
Comment.create(user_name: "twelve13", text: "sooo true", post: post2)
Comment.create(user_name: "twelve13", text: "yes yes yes", post: post3)
Comment.create(user_name: "carolinecaroline", text: "yayyyyy", post: post3)


