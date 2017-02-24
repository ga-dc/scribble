# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ title: 'Chicago' }, { title: 'Copenhagen' }])
#   Mayor.create(title: 'Emanuel', city: cities.first)
### NOTE: Make sure you've loaded the seeds.sql file into your DB before starting
### this exercise

require "pg" # postgres db library
require "active_record" # the ORM
# require "pry" # for debugging

require_relative './post_data.rb'
require_relative './comment_data.rb'

# Post.destroy_all
# Comment.destroy_all

                                post_data = get_post_data()
                                                            comment_data = get_comment_data()

                                                            comment_data.each_pair do |post_title, comments|
  info =                        post_data[post_title]
  current_post = Post.create!({
    title:  info[:title],
    content:  info[:content]
  })
  comments.each do |comment|
    Comment.create!({
      content:        comment[:content],
      # post:       current_post[:title]
      # post:       post_data[post_title]    #ActiveRecord::AssociationTypeMismatch: Post(#70116379603700) expected, got Hash(#70116373260680)
      # post:       info[:title]           #ActiveRecord::AssociationTypeMismatch: Post(#70102911960000) expected, got String(#70102905421380)
      # post:       post_title            #ActiveRecord::AssociationTypeMismatch: Post(#70206908690440) expected, got String(#70206907334220)
      post:       current_post                #GIRO:  THIS IMPLICITLY, UTHOOD INSERTS THE FK to posts.post_id
    })
  end
end
