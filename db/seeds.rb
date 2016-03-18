
Comment.destroy_all
Post.destroy_all
User.destroy_all


users = User.create([
  {email:"craig@craig.com", password:"craig"},
  {email:"craig2@craig.com", password:"craig2"},
])
