# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

first = Post.create(title: 'Test Post 1', author: 'Will Hawkins', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', likes: 1)
second = Post.create(title: 'Test Post 2', author: 'William Hawkins', content: 'Other stuff.', likes: 0)
third = Post.create(title: 'Test Post 3', author: 'Bill Hawkins', content: 'Even more other stuff.', likes: 0)

first.comments.create(content: 'I think this post is great.', author: 'Will Yum', likes: 0)
first.comments.create(content: 'I think this post is not great.', author: 'Will Bum', likes: 3)
first.comments.create(content: 'I am a cat.', author: 'William', likes: 0)
second.comments.create(content: "I'm the only comment on this post.", author: 'Will Gum', likes: 4)
third.comments.create(content: 'I think this post is boring.', author: 'Will Hawkins', likes: 1)
third.comments.create(content: 'I am also a comment.', author: 'Will Hawkins', likes: 0)
