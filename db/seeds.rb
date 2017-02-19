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

post_one = Post.create(title: "Web Design 101", author: "Ebenezer Williams", content: "Integer nec faucibus metus. Maecenas velit enim, ornare nec scelerisque ut, volutpat in tellus. In ultrices, tortor et egestas sodales, felis elit accumsan tortor, eu vestibulum metus enim vel odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla nibh augue, suscipit ac malesuada a, bibendum scelerisque justo. Vestibulum dignissim nec nibh eu molestie. Nam egestas mauris nisl.")
post_two = Post.create(title: "Holliday Styles", author: "Ebenezer Williams", content: "Integer nec faucibus metus. Maecenas velit enim, ornare nec scelerisque ut, volutpat in tellus. In ultrices, tortor et egestas sodales, felis elit accumsan tortor, eu vestibulum metus enim vel odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla nibh augue, suscipit ac malesuada a, bibendum scelerisque justo. Vestibulum dignissim nec nibh eu molestie. Nam egestas mauris nisl.")
post_three = Post.create(title: "5 Days in Tokyo", author: "Ebenezer Williams", content: "Integer nec faucibus metus. Maecenas velit enim, ornare nec scelerisque ut, volutpat in tellus. In ultrices, tortor et egestas sodales, felis elit accumsan tortor, eu vestibulum metus enim vel odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla nibh augue, suscipit ac malesuada a, bibendum scelerisque justo. Vestibulum dignissim nec nibh eu molestie. Nam egestas mauris nisl.")

#dummy comment data
# post_one.comments.create(author: "Jon Smith", content: "Greate post")
# post_one.comments.create(author: "Jason Smith", content: "thank you")
