Post.delete_all
Comment.delete_all

post1 = Post.create({author: 'Tim', text: 'This is the text of the post'})
post2 = Post.create({author: 'Eric', text: 'This is the text of the post'})
post3 = Post.create({author: 'Tim', text: 'This is the text of the post'})
post4 = Post.create({author: 'Eric', text: 'This is the text of the post'})
post5 = Post.create({author: 'Tim', text: 'This is the text of the post'})
Comment.create({author: 'bob', text: 'this is a comment', post_id: "#{post1.id}"})
Comment.create({author: 'bob', text: 'this is a comment', post_id: "#{post2.id}"})
Comment.create({author: 'bob', text: 'this is a comment', post_id: "#{post3.id}"})
Comment.create({author: 'bob', text: 'this is a comment', post_id: "#{post4.id}"})
Comment.create({author: 'bob', text: 'this is a comment', post_id: "#{post5.id}"})
