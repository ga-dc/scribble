# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.create!(author: "bob", content: "Hello world")
Post.create!(author: "John", content: "Hello Worlddddd")

Comment.create!(comment: " this is great", author: " John")
Comment.create!(comment: "hello world hello world", author: " june")
