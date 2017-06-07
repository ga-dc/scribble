# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

one_post = Post.create(title: 'Lord of the Rings', body: "asdfasdfasdfasdfasdffdas", date_written: DateTime.now)
  Post.create(title: 'Lord of the flies', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(title: 'Ringer', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(title: 'Wonder Woman', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(title: 'Old School', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)

  Comment.create(body: 'ONE THIS IS THE BODY!', date_written: DateTime.now, post: one_post)
  Comment.create(body: 'TWO THIS IS THE BODY!', date_written: DateTime.now)
