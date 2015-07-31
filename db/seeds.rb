# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all


##### POSTS #####


post_demo_1 = Post.create({
  title: "Demo 1 right here",
  body: "Yep. Demo 1."
  })

post_demo_2 = Post.create({
  title: "Demo 2. Present",
  body: "Demo 1 was solid... Demo 2 is solider."
  })

post_demo_3 = Post.create({
  title: "Demo 3 ready for action",
  body: "Solidest"
  })

post_demo_4 = Post.create({
  title: "Demo 4 is good to go",
  body: "Demo 4 is always good to go"
  })

post_demo_5 = Post.create({
  title: "Demo 5.",
  body: "Ready"
  })


##### COMMENTS #####


comment_demo_1 = Comment.create({
  post_id: post_demo_1.id,
  body: "Demo 1's comment right here."
  })

comment_demo_2 = Comment.create({
  post_id: post_demo_2.id,
  body: "Demo 2's better comment."
  })

comment_demo_3 = Comment.create({
  post_id: post_demo_3.id,
  body: "Demo 3's really awesome comment"
  })

comment_demo_4 = Comment.create({
  post_id: post_demo_4.id,
  body: "Demo 4 has great comments"
  })

comment_demo_5 = Comment.create({
  post_id: post_demo_5.id,
  body: "Those demo 5 comments. Man oh man."
  })
