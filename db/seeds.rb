# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

first_post = Post.create(title: "First Post", post_text: "Twee bushwick franzen literally, selvage seitan YOLO vape crucifix ramps lo-fi you probably haven't heard of them. Sustainable cardigan ennui fap pabst lomo. Tousled edison bulb everyday carry DIY, cold-pressed enamel pin tote bag intelligentsia. Cardigan before they sold out marfa, drinking vinegar unicorn four loko normcore viral iceland try-hard next level affogato single-origin coffee vice. Shoreditch semiotics kickstarter ennui chia, try-hard disrupt chambray tattooed jean shorts street art sustainable. Blue bottle kinfolk blog twee. You probably haven't heard of them meh fap 90's slow-carb.", author: "Laura")
first_post = Post.create(title: "Second Post", post_text: "Twee bushwick franzen literally, selvage seitan YOLO vape crucifix ramps lo-fi you probably haven't heard of them. Sustainable cardigan ennui fap pabst lomo. Tousled edison bulb everyday carry DIY, cold-pressed enamel pin tote bag intelligentsia. Cardigan before they sold out marfa, drinking vinegar unicorn four loko normcore viral iceland try-hard next level affogato single-origin coffee vice. Shoreditch semiotics kickstarter ennui chia, try-hard disrupt chambray tattooed jean shorts street art sustainable. Blue bottle kinfolk blog twee. You probably haven't heard of them meh fap 90's slow-carb.", author: "Liz")

first_comment_first_post = Comment.create(comment_text: "this is great!", author: "Liz", post_id: "1")
