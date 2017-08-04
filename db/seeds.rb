# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Comment.destroy_all
Post.destroy_all


x1 = Post.create({title: "thing1", text:  "google.com", photo_url: "wwww.google.com"})
x2= Post.create({ title: "thimg2", text:  "google.com", photo_url: "wwww.google.com"})
x3= Post.create({ title: "thing3", text:  "google.com", photo_url: "wwww.google.com"})


y1= Comment.create({ title: "hi1", text: "kitty1", post: x1})
y2= Comment.create({ title: "hi2", text: "kitty1", post: x2})
y3= Comment.create({ title: "hi3", text: "kitty1", post: x3})

#
# y1= x1.comments.create({id: 1, title: "hi1", album: "kitty1", preview_url: "google.com"})
# y2= x2.comments.create({id: 2, title: "hi2", album: "kitty1", preview_url: "google.com"})
# y3= x3.comments.create({id: 3, title: "hi3", album: "kitty1", preview_url: "google.com"})
