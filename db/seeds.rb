# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

first_post = Post.create({
  title: 'Can I get a "1G" in the chat, please',
  author: 'ST6',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus, dui sit amet molestie feugiat, augue arcu vestibulum turpis, at faucibus augue nulla ut libero. Aliquam dignissim sed turpis sit.',
  photo_url: 'http://img00.deviantart.net/63c8/i/2015/293/8/b/summit1g_shirt_logo_by_ninjadds-d9du0fq.jpg',
  link: 'https://www.twitch.tv/summit1g'
})

second_post = Post.create({
  title: 'TIM!',
  author: 'ST6',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a.',
  photo_url: 'https://static-cdn.jtvnw.net/jtv_user_pictures/timthetatman-profile_image-4cb867e7d0af1448-300x300.jpeg',
  link: 'https://www.twitch.tv/timthetatman'
})

first_post.comments.create({
  username: 'Summit',
  content: 'Great post!',
  rating: 5
})

first_post.comments.create({
  username: 'Grimmz',
  content: 'hmmm, muthatrucka',
  rating: 4
})

first_post.comments.create({
  username: 'timthetatman',
  content: 'Summit is overrated',
  rating: 2
})

second_post.comments.create({
  username: 'timthetatman',
  content: 'might make me dance!',
  rating: 5
})

second_post.comments.create({
  username: 'mossie',
  content: 'come back sensei',
  rating: 4
})

second_post.comments.create({
  username: 'ST6',
  content: 'my best post ever',
  rating: 5
})
