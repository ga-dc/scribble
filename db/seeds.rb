# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Comment.destroy_all
Post.destroy_all

kendall = User.create(email: 'adkins.kendall90@gmail.com', password: 'pass1234')

posts = kendall.posts.create([{title: 'Can I get a "1G" in the chat, please', author: 'ST6', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', photo_url: 'http://img00.deviantart.net/63c8/i/2015/293/8/b/summit1g_shirt_logo_by_ninjadds-d9du0fq.jpg', link: 'https://www.twitch.tv/summit1g'},
{title: 'TIM!', author: 'ST6', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a.', photo_url: 'https://static-cdn.jtvnw.net/jtv_user_pictures/timthetatman-profile_image-4cb867e7d0af1448-300x300.jpeg', link: 'https://www.twitch.tv/timthetatman'}])


kendall.comments.create([{username: 'Summit', content: 'Great post!', rating: 5, post: posts[0]},
{username: 'Grimmz', content: 'hmmm, muthatrucka', rating: 4, post: posts[0]},
{username: 'timthetatman', content: 'Summit is overrated', rating: 2, post: posts[0]},
{username: 'timthetatman', content: 'might make me dance!', rating: 5, post: posts[1]},
{username: 'mossie', content: 'come back sensei', rating: 4, post: posts[1]},
{username: 'ST6', content: 'my best post ever', rating: 5, post: posts[1]}
])
