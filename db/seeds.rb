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

# post_data = get_post_data()
# comment_data = get_comment_data()

# user.create ([
#   {user:"player_one"},
#   {user:"player_two"}
#   ])

post_data.each do |post_name, posts|
  info = post_data[post_name]
  current_post = Post.create!({
    username:     info[:username],
    text:         body[:text],
    post_id:      integer[:post_id],
    created_at:   create[:created_at],
    updated_at:   update[:updated_at]
  })

  comments.each do |comment|
    Comment.create!({
    title:        comment[:title],
    text:         body[:text],
    user_id:      integer[:user_id],
    created_at:   create[:created_at],
    updated_at:   update[:updated_at]
    })
  end
end
