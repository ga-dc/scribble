# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comments = Comment.all
posts = Post.all

comments.destroy_all
posts.destroy_all

5.times do |i|
  example_post = Post.create(title: "Example_#{i + 1}", content: 'here is an example post!!!!!')
end
