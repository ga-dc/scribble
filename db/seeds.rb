# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

javascript = Post.create(title: "I miss JavaScript", author: "Erica Norby", content: "I like Ruby and all, but JavaScript was just so special. I miss the late-nights and the laughs we used to share. There will always be a special place in my heart for JavaScript.")
lorem1 = Post.create(title: "A Poem about Lorem", author: "Lorem Lover", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
lorem2 = Post.create(title: "A Poem about Lorem - Part 2", author: "Lorem Lover", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Comment.create!(author: "Petunia", content: "OMG best thing I have ever read.", post_id: javascript.id)
Comment.create!(author: "Spongebob", content: "Lorem is the best.", post_id: lorem1.id)
