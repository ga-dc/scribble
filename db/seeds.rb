# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './comment_data.rb'
require_relative './post_data.rb'

Comment.destroy_all
Post.destroy_all

comment_data = get_comment_data()
post_data = get_post_data()

comment_data.each_pair do |post_title, comments|
  info = post_data[post_title]
  current_post = Post.create!({
    title:           info[:title],
    pContent:         info[:pContent]
  })

  comments.each do |comment|
    Comment.create!({
      cContent:        comment[:cContent],
      post: current_post
    })
  end
end