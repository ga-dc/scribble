# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(author: "Steve", title: "Blog 1", text: "DIY cray organic pug chillwave jean shorts. Drinking vinegar forage four loko pickled fashion axe. Readymade organic American Apparel beard, locavore gastropub post-ironic. Mixtape kitsch organic street art artisan mlkshk. Fingerstache post-ironic +1 before they sold out Pitchfork, quinoa gastropub Neutra kale chips cronut. Crucifix organic cardigan authentic. Skateboard street art listicle, Pitchfork actually gastropub mumblecore lumbersexual literally cliche Tumblr 90's.")
Post.create(author: "Bob", title: "Everything Sucks", text: "Small batch fap keffiyeh dreamcatcher pork belly farm-to-table, shabby chic gentrify four loko jean shorts roof party locavore Neutra. Master cleanse paleo Portland chillwave salvia. Cliche try-hard Wes Anderson, tattooed chia heirloom fashion axe Helvetica typewriter twee actually Carles gluten-free artisan. XOXO Intelligentsia before they sold out quinoa, occupy Odd Future next level vegan sustainable. Trust fund Intelligentsia bitters Marfa, asymmetrical squid food truck leggings cray chillwave. Bitters seitan butcher keffiyeh, bespoke before they sold out farm-to-table disrupt viral church-key try-hard. Fashion axe distillery Thundercats deep v, Godard lumbersexual chambray before they sold out migas Williamsburg." )

@post = Post.first
@post.comments.create(user: "Hipster1", comment: "I knew about this 2 months ago")

Post.last.comments.create(user: "Hipster 12", comment: "This is totally not cool")
