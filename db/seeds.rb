# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Models: `Post` and `Comment`

require_relative './post_data.rb'
require_relative './comment_data.rb'

Post.destroy_all
Comment.destroy_all

post_data = get_post_data()
comment_data = get_comment_data()

post_data.each_pair do |post_name, posts|
  info = post_data[post_name]
  current_post = Post.create!({
    username:     info[:username],
  })

  comments.each do |comment|
    Comment.create!({
      title:      comment[:title],
      username:   info[:username]
    })
  end
end
