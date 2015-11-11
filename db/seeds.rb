# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Comment.destroy_all
Post.destroy_all

posts = Post.create([
  {title:"4th time around", text: "When she said
'Don’t waste your words, they’re just lies'
I cried she was deaf
And she worked on my face until breaking my eyes
Then said, 'What else you got left?'
It was then that I got up to leave
But she said, “Don’t forget
Everybody must give something back
For something they get", user_id: User.first.id},
  {text: "I stood there and hummed
I tapped on her drum and asked her how come
And she buttoned her boot
And straightened her suit
Then she said, 'Don’t get cute'
So I forced my hands in my pockets
And felt with my thumbs
And gallantly handed her
My very last piece of gum", title: "fourth time around", user_id: User.first.id},
  {text: "She threw me outside
I stood in the dirt where ev’ryone walked
And after finding I’d
Forgotten my shirt
I went back and knocked
I waited in the hallway, she went to get it
And I tried to make sense
Out of that picture of you in your wheelchair
That leaned up against . . .", title: "4th time", user_id: User.first.id},
  {text: "And when I was through
I filled up my shoe
And brought it to you
And you, you took me in
You loved me then
You didn’t waste time
And I, I never took much
I never asked for your crutch
Now don’t ask for mine", title: "4th time around", user_id: User.first.id},
  ])
comments  = Comment.create([
  {author: "Bill", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id},
  {author: "Bill2", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id},
  {author: "Bill3", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id}

])
