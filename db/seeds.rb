# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

Post.create(
  author: "Stella",
  title: "Test Article",
  content: "Test Post: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sollicitudin mollis orci. Integer sit amet lorem vulputate neque aliquet fringilla ac eget tellus. In eget scelerisque tortor, nec facilisis metus. Praesent et ullamcorper nunc. Ut quis nulla vel felis accumsan ullamcorper ac at ligula. Nam pulvinar nisi id ex vestibulum, vitae volutpat lacus fringilla. Nulla facilisi. Phasellus et ornare diam. Sed mollis lorem ac nisl porttitor, non sagittis nunc eleifend. Vivamus sodales dictum lacus, sed placerat erat tincidunt vitae. Phasellus ac mollis nulla."
)

Comment.create(
  author: "Sarah",
  content: "Test Content: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sollicitudin mollis orci.",
  post_id: 3
)
