# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all

@post_1 = Post.create(headline: "Hello, Hodor", post_content: "Hodor. Hodor hodor; hodor hodor. Hodor. Hodor, hodor; hodor hodor hodor HODOR hodor, hodor hodor... Hodor hodor hodor. Hodor. Hodor hodor - hodor hodor hodor? Hodor hodor - hodor hodor hodor; hodor hodor hodor hodor hodor hodor hodor! Hodor hodor hodor?! Hodor hodor - hodor; hodor hodor; hodor hodor hodor; hodor hodor?" image:"https://www.google.com/search?q=hodor&espv=2&biw=1117&bih=778&tbm=isch&tbo=u&source=univ&sa=X&ved=0CIEBEIkeahUKEwjL64zTtIfJAhVIox4KHcNpA7E#imgrc=hLw8d-JVror1FM%3A")

@post_2 = Post.create(headline: "Hodor do Hodor", post_content: "Hodor hodor HODOR! Hodor hodor hodor. Hodor. Hodor hodor - hodor hodor hodor. Hodor. Hodor, hodor hodor hodor, hodor. Hodor hodor?! Hodor hodor; hodor hodor. Hodor. Hodor hodor hodor... Hodor hodor hodor - hodor, hodor, hodor hodor. Hodor hodor HODOR! Hodor hodor - hodor, hodor. Hodor hodor hodor hodor?" image:"http://winteriscoming.net/wp-content/uploads/2015/04/game-of-thrones-hodor-osha.jpg")

@post_3 = Post.create(headline: "I am Hodor", post_content: "Hodor hodor - hodor hodor hodor hodor hodor; hodor hodor? Hodor! Hodor hodor, hodor hodor hodor?! Hodor! Hodor hodor, hodor hodor; hodor hodor, hodor, hodor hodor. Hodor hodor - hodor... Hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor, hodor. Hodor hodor - hodor - hodor, hodor. Hodor hodor. Hodor. Hodor hodor HODOR! Hodor hodor hodor hodor hodor! Hodor hodor - HODOR hodor, hodor hodor; hodor hodor?

Hodor, hodor, hodor. Hodor hodor hodor? Hodor hodor - hodor... Hodor hodor hodor? Hodor. Hodor hodor... Hodor hodor hodor hodor hodor hodor; hodor hodor hodor! Hodor. Hodor hodor, hodor. Hodor hodor; hodor hodor? Hodor. Hodor hodor hodor hodor - hodor, hodor, hodor hodor. Hodor, hodor, hodor. Hodor HODOR hodor, hodor HODOR hodor, hodor hodor, hodor, hodor hodor.

Hodor hodor - hodor... Hodor hodor hodor, hodor. Hodor hodor hodor hodor. Hodor. Hodor hodor hodor hodor - hodor... Hodor hodor hodor hodor! Hodor hodor hodor hodor, hodor, hodor hodor. Hodor hodor HODOR! Hodor HODOR hodor, hodor hodor... Hodor hodor hodor hodor! Hodor! Hodor hodor, HODOR hodor, hodor hodor, hodor. Hodor hodor hodor! Hodor, hodor. Hodor. Hodor, hodor - hodor hodor! Hodor hodor... Hodor hodor hodor. Hodor. Hodor, hodor. Hodor. Hodor, hodor hodor hodor! Hodor HODOR hodor, hodor hodor, hodor. Hodor hodor hodor hodor?" image:"http://untiedmag.com/wp-content/uploads/2014/05/Hodor.jpg")

@post_4 = Post.create(headline: "We are all Hodor", post_content: "Hodor, hodor. Hodor. Hodor, hodor - hodor - hodor? Hodor. Hodor HODOR hodor, hodor hodor, hodor. Hodor hodor. Hodor hodor - HODOR hodor, hodor hodor hodor hodor?! Hodor, hodor. Hodor. Hodor, hodor hodor HODOR hodor, hodor hodor... Hodor hodor hodor?

Hodor! Hodor hodor, hodor hodor hodor HODOR hodor, hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor; hodor hodor hodor, hodor. Hodor hodor? Hodor HODOR hodor, hodor hodor... Hodor hodor hodor - hodor. Hodor. Hodor HODOR hodor, hodor hodor hodor hodor?! Hodor hodor - hodor; hodor hodor hodor; hodor hodor?! Hodor hodor - hodor; hodor hodor; hodor hodor. Hodor hodor - hodor hodor, hodor, hodor hodor." image:"http://cdn.hbowatch.com/wp-content/uploads/2014/09/bran-hodor-season-5.jpg")

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_1)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_2)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_2)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_3)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_3)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @post_3)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @@post_4)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @@post_4)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @@post_4)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @@post_4)

Comment.create(comment_content: "Hodor hodor; hodor hodor, hodor. Hodor hodor; hodor hodor hodor! Hodor hodor - hodor, hodor.", post: @@post_4)
