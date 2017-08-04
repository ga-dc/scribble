# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

posts = Post.create([
{title: "Blue Eyed Cat",
  author: "Liz Jewell",
  content: "this is a blog post",
  is_published: false,
  img_url: "https://www.petfinder.com/wp-content/uploads/2012/11/91615172-find-a-lump-on-cats-skin-632x475.jpg"
},
{title: "Striped Cat",
  author: "Dr. Seuss",
  content: "this is also a blog post",
  is_published: false,
  img_url: "https://www.royalcanin.com/~/media/Royal-Canin/Product-Categories/cat-adult-landing-hero.ashx"
}
]
)

comments = Comment.create([
{body:"The first comment on the first post", post: posts[0]},
{body:"The first comment on the second post", post: posts[0]},
])
