# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


first_post = Post.create(post_title: "First Post", post_text: "This is my first post.  Short and sweet.", tag_title: "post", tag_text: "first tag blah")
