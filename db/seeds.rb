# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# "We need a clean start, Morty"
Post.destroy_all


test_post = Post.create(subject:"Test 1", body:"Semi-articulated opinion", poster:"Opinion8r")
test_post2 = Post.create(subject:"Test 2", body:"Quasi-articulated opinion", poster:"Op(9-n)r")
test_post3 = Post.create(subject:"Test 3", body:"Opinion", poster:"Str8UpStu")
test_post4 = Post.create(subject:"Test 4", body:"Thinkin about onions", poster:"Onion8r")

test_comment0 = Comment.create(text:"That's just a semi-articulated opinion",
                              commenter:"Op(9-n)r", post_id:test_post.id)
test_comment1 = Comment.create(text:"No my opinion is fact",
                              commenter:"Opinion8r", post_id:test_post.id)

test_comment2 = Comment.create(text:"That's just a quasi-articulated opinion",
                              commenter:"Op(9-n)r", post_id:test_post2.id)
test_comment3 = Comment.create(text:"wow so (!)meta",
                              commenter:"Opinion8r", post_id:test_post2.id)
test_comment4 = Comment.create(text:"a+ thread",
                              commenter:"Str8UpStu", post_id:test_post2.id)

test_comment5 = Comment.create(text:"wow! well said. +1",
                              commenter:"Opinion8r", post_id:test_post3.id)

test_comment6 = Comment.create(text:"straight up. +1",
                              commenter:"Str8UpStu", post_id:test_post4.id)
