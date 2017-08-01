# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

first = Post.create(title: 'title', content: 'content' , post_by: 'someuser')
second = Post.create(title: 'more titles', content: 'content contennnnt' , post_by: 'somesssuser')

first.comments.create(comment_content: 'coneten for comment', comment_by: 'anotheruser')
first.comments.create(comment_content: 'wooooooo', comment_by: 'comeondude')
second.comments.create(comment_content: 'contenente forzzzz comment', comment_by: 'anothernotheruser')
