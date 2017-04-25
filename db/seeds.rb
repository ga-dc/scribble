# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

one = Post.create(title: 'Out of Cheerios, Again.', author: 'Nire Noswad', subject: 'food', body: 'We are out of Cheerios.  I blame the dog.')
two = Post.create(title: 'A Snake in My Boot', author: 'Woody', subject: 'danger', body: 'Pizza party.')

Comment.create(author: 'Hamish McEnroe', post: one, body: 'buy some more.')
Comment.create(author: 'Bitsy Donaldson', post: one, body: 'If spray tip touches nose, rinse with hot water before replacing cap.' )
Comment.create(author: 'Mr. Crotalus', post: two, body: 'doorbusters.  special deals.' )
Comment.create(author: 'Frodo Baggins', post: two, body: 'rock and roll will save your soul.')
