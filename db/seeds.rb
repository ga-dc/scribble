# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'active_record'


# models
require_relative '../app/models/comment'
require_relative '../app/models/post'



Comment.destroy_all
Post.destroy_all

hipp = Post.create(title: "hipster", author: "hipsterjo", content: "Echo park vexillologist PBR&B shabby chic, farm-to-table selfies man braid meh fap marfa. Activated charcoal ugh whatever art party, vaporware put a bird on it drinking vinegar meggings YOLO waistcoat glossier 8-bit. Tattooed mixtape photo booth tilde kombucha mustache polaroid DIY vexillologist vice yuccie. Mlkshk health goth four loko scenester chicharrones succulents listicle. Ennui deep v copper mug bespoke, vape YOLO asymmetrical viral. Banjo flexitarian 3 wolf moon before they sold out artisan. Quinoa polaroid tumblr vexillologist hot chicken enamel pin man braid vaporware, butcher yuccie try-hard tousled lomo forage.
", likes: 3)

jimms_comment = hipp.comments.create(content: "hippy",author: "Jimmy")
