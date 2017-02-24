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
  {title: "Hungry, Hungry Humans!", author: "nyc520", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis erat, efficitur vitae pellentesque vitae, semper eget ligula. In pretium eleifend mauris, a dapibus lectus condimentum non. Duis semper tellus turpis, a vehicula sapien hendrerit at. Quisque sagittis dolor quis dapibus semper. Phasellus id urna dui. Sed elementum turpis ac luctus sagittis. Suspendisse id tortor ut nisl pulvinar pharetra in sagittis nunc. Vivamus id tellus id ex rhoncus pharetra nec et libero. Morbi congue eros viverra, posuere mauris sed, iaculis orci. Suspendisse potenti. In nibh turpis, aliquet sed purus ac, aliquet egestas mi. Quisque at convallis leo. Fusce ac luctus purus, vel cursus enim. Sed pulvinar eros elit, nec posuere enim vehicula nec. Praesent pharetra enim quam, et condimentum leo sodales id. \nAliquam ac magna orci. Donec quis faucibus nunc. Vivamus et varius nunc. Praesent eget purus elit. Phasellus sit amet massa blandit, volutpat nibh vel, consequat sapien. Duis et vulputate urna. Nunc nec facilisis leo, feugiat lobortis ligula. Etiam bibendum malesuada augue. Cras blandit augue et luctus vulputate. Nullam aliquam placerat mauris a commodo. Morbi fermentum, augue at iaculis luctus, nibh eros imperdiet est, sit amet porttitor arcu purus eu turpis."},
  {title: "Teenage Mutant Roided Turtle", author: "ivXtreme", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis erat, efficitur vitae pellentesque vitae, semper eget ligula. In pretium eleifend mauris, a dapibus lectus condimentum non. Duis semper tellus turpis, a vehicula sapien hendrerit at. Quisque sagittis dolor quis dapibus semper. Phasellus id urna dui. Sed elementum turpis ac luctus sagittis. Suspendisse id tortor ut nisl pulvinar pharetra in sagittis nunc. Vivamus id tellus id ex rhoncus pharetra nec et libero. Morbi congue eros viverra, posuere mauris sed, iaculis orci. Suspendisse potenti. In nibh turpis, aliquet sed purus ac, aliquet egestas mi. Quisque at convallis leo. Fusce ac luctus purus, vel cursus enim. Sed pulvinar eros elit, nec posuere enim vehicula nec. Praesent pharetra enim quam, et condimentum leo sodales id. \nAliquam ac magna orci. Donec quis faucibus nunc. Vivamus et varius nunc. Praesent eget purus elit. Phasellus sit amet massa blandit, volutpat nibh vel, consequat sapien. Duis et vulputate urna. Nunc nec facilisis leo, feugiat lobortis ligula. Etiam bibendum malesuada augue. Cras blandit augue et luctus vulputate. Nullam aliquam placerat mauris a commodo. Morbi fermentum, augue at iaculis luctus, nibh eros imperdiet est, sit amet porttitor arcu purus eu turpis."},
  {title: "One more step forward", author: "nyc520", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis erat, efficitur vitae pellentesque vitae, semper eget ligula. In pretium eleifend mauris, a dapibus lectus condimentum non. Duis semper tellus turpis, a vehicula sapien hendrerit at. Quisque sagittis dolor quis dapibus semper. Phasellus id urna dui. Sed elementum turpis ac luctus sagittis. Suspendisse id tortor ut nisl pulvinar pharetra in sagittis nunc. Vivamus id tellus id ex rhoncus pharetra nec et libero. Morbi congue eros viverra, posuere mauris sed, iaculis orci. Suspendisse potenti. In nibh turpis, aliquet sed purus ac, aliquet egestas mi. Quisque at convallis leo. Fusce ac luctus purus, vel cursus enim. Sed pulvinar eros elit, nec posuere enim vehicula nec. Praesent pharetra enim quam, et condimentum leo sodales id. \nAliquam ac magna orci. Donec quis faucibus nunc. Vivamus et varius nunc. Praesent eget purus elit. Phasellus sit amet massa blandit, volutpat nibh vel, consequat sapien. Duis et vulputate urna. Nunc nec facilisis leo, feugiat lobortis ligula. Etiam bibendum malesuada augue. Cras blandit augue et luctus vulputate. Nullam aliquam placerat mauris a commodo. Morbi fermentum, augue at iaculis luctus, nibh eros imperdiet est, sit amet porttitor arcu purus eu turpis."}
  ])

comments = Comment.create([
  {author: "jimmyQ", message: "this is a terrible post", post_id: 2},
  {author: "nyc520", message: "I hate you Jimmy", post_id: 2},
  {author: "jimmyQ", message: "this is a terrible post", post_id: 1},
  {author: "nyc520", message: "Don't you have anything better to do?", post_id: 1},
  {author: "ivXtreme", message: "inb4 jimmy says this is a terrible post", post_id: 3},
  {author: "jimmyQ", message: "this is a terrible post", post_id: 3},
  {author: "nyc520", message: "ughhhh", post_id: 3}
])
