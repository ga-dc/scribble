# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

trip = Post.create(title: "Top 10 Places to Visit this Summer", author: "Alexa Klein", photo_url: "")
fun = Post.create(title: "Top 5 Activities in D.C. this Spring", author: "El Presidente", photo_url: "")
eat = Post.create(title: "Top DC Restaurants and Bars", author: "Hungry Sam", photo_url: "")
history = Post.create(title: "7 Historical DC Facts you Don't Know!", author: "Uncle Sam", photo_url:"")
