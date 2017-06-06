# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all

  Post.create(author: 'Star Wars', title: 'Lord of the Rings', body: "asdfasdfasdfasdfasdffdas", date_written: DateTime.now)
  Post.create(author: 'Movie 2', title: 'Lord of the flies', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(author: 'Movie 3', title: 'Ringer', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(author: 'Movie 4', title: 'Wonder Woman', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
  Post.create(author: 'Movie 5', title: 'Old School', body: "asdfasdfasdfasdfasdffdasf", date_written: DateTime.now)
