# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

sample1 = Post.create(title: 'Sample title', content: "Sample post text. Blah blah blah. I write things!")

Comment.create(title: 'sample comment title', content: "Sample comment text. Blah blah blah. I comment on things!", post: sample1)
