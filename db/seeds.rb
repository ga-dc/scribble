require_relative './comment_data.rb'
require_relative './post_data.rb'

Comment.destroy_all
Post.destroy_all

comment_data = get_comment_data()
post_data = get_post_data()

comment_data.each_pair do |post_title, comments|
  info = post_data[post_title]
  current_post = Post.create!({
    category:     info[:category],
    title:        info[:title],
    photo_url:    info[:photo_url],
    text:         info[:text]
  })

  comments.each do |comment|
    Comment.create!({
      user_name:    comment[:user_name],
      text:         comment[:text],
      post:         current_post
    })
  end
end


