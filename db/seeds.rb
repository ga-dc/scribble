# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all
User.destroy_all

User.create([
  {email: "r_scarlet@sdm.gsk", password: "septette", password_confirmation: "septette", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "r_hakurei@hakurei.gsk", password: "capriccio", password_confirmation: "capriccio", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "y_saigyouji@netherwor.ld", password: "resurrection", password_confirmation: "resurrection", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
  ])

users = User.all

users.each do |user|
  user.posts.create({title: "this is some post title", post_text: "this is some post text"})
end

posts = Post.all

users.each do |user|
  posts.each do |post|
    post.user.comments.create({
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.", post_id: post.id, user_id: user.id
    })
  end
end
