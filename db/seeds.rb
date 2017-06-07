# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.comments.create(title: 'Story Day', body: "You're gonna here me talk about a story, but also another of a random banter I have on rap track, cause why not?.")
Post.comments.create(title: 'Rico Story', body: "Something people respect and believe in, but it's sad how we as Americans allow crime to exist.")
Post.comments.create(title: 'Names Young Cuzah', body: "Fun fact. This was my nickname at one point from Logic's (The Rapper) mentor in High School. I know someone who atteneded Gaithersburg, MD. That person mentored little youngin Logic the rapper. We called him the milk man during lunch all the time because he drinks so much milk. If you ever see something of his coming the way call him the milk man lol.")
Post.comments.create(title: 'Young Cuzah\'s origin', body: "Cudein is a nickname from middle school of a African warrior of some form. Vietnamese slang uza for a game we played in the streets of Saigon village a form of gambling on a 6 pictured piece of cloth with a cup, dice, anything to offer up in the game pile. Cuzah.")

Comment.create(body: 'Enjoy the randomoness. DUMBFOUNDED - CLEAR. Check out that on youtube. Showing my man some love.', post: one_post)