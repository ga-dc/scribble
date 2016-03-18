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
sample2 = Post.create(title: 'Dogs are cute', content: "I like dogs. They are pretty awesome. They are fluffy and full of love. I have two dogs that I love very much. Their names are Noname and Maggie.")

Comment.create(title: 'sample comment title', content: "Sample comment text. Blah blah blah. I comment on things!", post: sample1)
Comment.create(title: 'Hooray for dogs!', content: "I also enjoy dogs!", post: sample2)
