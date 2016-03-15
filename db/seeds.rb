

Post.destroy_all
Comment.destroy_all

post_one = Post.create(title: "Hello World", user_id: current_user.id, message: "Here's your first post! Click edit to edit or delete, or click 'New Post' to create a new post.", image_url: "http://www.simonwestbrookdesign.co.uk/wp-content/uploads/2013/04/kapow1.jpg")

post_one.comments.create(user_id: current_user.id, comment: "This is your first comment!")
