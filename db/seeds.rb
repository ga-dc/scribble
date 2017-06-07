# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

orewell = Post.create(post_name:"George Orewell", topic:"politics", post_url:"www.politics.com")
daniells = Post.create(post_name:"Jack Daniells", topic:"alcohol", post_url:"www.alcohol.com")
depp = Post.create(post_name:"Johnny Depp", topic:"movies", post_url:"www.depp.com")
haile = Post.create(post_name:"Fitssum Haile", topic:"programming", post_url:"www.programming.com")

wilde = Comment.create(comment_name:"Oscar Wilde", num_comment:"23", comment_url:"www.classics.com")
walker = Comment.create(comment_name:"Johnny Walker", num_comment:"2", comment_url:"www.minebetter.com")
dicaprio = Comment.create(comment_name:"Leonardo Dicaprio", num_comment:"44", comment_url:"www.istarbetter.com")
gates = Comment.create(comment_name:"Bill Gates", num_comment:"1", comment_url:"www.shutup.com")
