# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require_relative "./post_data.rb"
# require_relative "./comment_data.rb"

Post.destroy_all;
Comment.destroy_all;

Post.create(title: "hello world1", content: "sample1", creater: "user1")
Post.create(title: "hello world2", content: "sample2", creater: "user2")

# post_data= get_post_data()
# comment_data=get_comment_data()
#
# post_data.each_pair do |post_creater, comments|
#   info = post_data

# song_data = get_song_data()
# artist_data = get_artist_data()
#
# song_data.each_pair do |artist_name, songs|
#   info = artist_data[artist_name]
#   current_artist = Artist.create!({
#     name:         info[:name],
#     photo_url:    info[:photo_url],
#     nationality:  info[:nationality]
#   })
#
#   songs.each do |song|
#     Song.create!({
#       title:        song[:title],
#       album:        song[:album],
#       preview_url:  song[:preview_link],
#       artist:       current_artist
#     })
#   end
# end
