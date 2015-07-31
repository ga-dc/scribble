

Post.destroy_all
Comment.destroy_all



first_post = Post.create(title:"My Awesome Blog Post",author:"Ryan",article:"Awesomeness!!!")
Comment.create(author:"Bobby",comment:"Your not Awesome!!!!",post: first_post )
User.create(username:"Bobby")
