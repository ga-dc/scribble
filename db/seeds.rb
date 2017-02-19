# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

#dummy posts data

post_one = Post.create(title: "Post One", author: "Ebenezer Williams", content: "This is the body of the post")
post_two = Post.create(title: "Post Two", author: "Ebenezer Williams", content: "This is the body of the second post")
post_three = Post.create(title: "Post Three", author: "Ebenezer Williams", content: "This is the body of the third post")

#dummy comment data
post_one.comments.create(author: "Jon Smith", content: "Greate post", updated_at: datetime)
post_one.comments.create(author: "Jason Smith", content: "thank you", updated_at: datetime)
