# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require_relative '../app/models/post.rb'
require_relative './schema.rb'


Post.create!(title: 'Hello', content: 'Hey all')
