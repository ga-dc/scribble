# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

Post.create([{author: 'Amlak', title: 'Student', content: 'This is wdi'},
  {author: 'Tush', title: 'Student', content: 'wonderfull'}])

Comment.create([{name: 'Barkon', text: 'my boy', post_id: 1},
    {name: 'Mimi', text: 'my sister', post_id: 1}])
