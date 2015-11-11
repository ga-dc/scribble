# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './comment_data.rb'
require_relative './blog_data.rb'

comments = Comment.create!({
	commenter_name: comment[:commenter_name]
	content: comment[:content]
	})

blogs = Blog.create!({
	author_name: 	blog[:author_name]
	title: 			blog[:title],
	content: 		blog[:content]
	})