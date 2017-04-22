# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

hipsters  = Post.create(title: "Hipsters", author: "Curtis", photo_url: "http://socialnewsdaily.com/wp-content/uploads/2015/10/hipster-tash_3046941b.jpg", text:"Small batch fap keffiyeh dreamcatcher pork belly farm-to-table, shabby chic gentrify four loko jean shorts roof party locavore Neutra. Master cleanse paleo Portland chillwave salvia. Cliche try-hard Wes Anderson, tattooed chia heirloom fashion axe Helvetica typewriter twee actually Carles gluten-free artisan. XOXO Intelligentsia before they sold out quinoa, occupy Odd Future next level vegan sustainable. Trust fund Intelligentsia bitters Marfa, asymmetrical squid food truck leggings cray chillwave. Bitters seitan butcher keffiyeh, bespoke before they sold out farm-to-table disrupt viral church-key try-hard. Fashion axe distillery Thundercats deep v, Godard lumbersexual chambray before they sold out migas Williamsburg.")
sweet_tunes = Post.create(title: "Sweet Tunes", author: "Bootsy Collins", photo_url:"https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjyivKb77jTAhWGRiYKHUz7A38QjRwIBw&url=https%3A%2F%2Frateyourmusic.com%2Fartist%2Fbootsy-collins&psig=AFQjCNGBLKsHcaxQBSZj5geVgfOtL63VUQ&ust=1492978162008126", text: "Music is a powerful thing. It evokes feelings and has the power to bring people together. Music is also a way for people to express themselves and share ideas, whether through poetic lyrics or throbbing anthems. But today, artists are not known for their music, but for how extravagant their outfits are and how many times their wealthy relatives can get them out of jail. And thus music is lost. ")
water_pressure  = Post.create(title: "What's up with the water pressure at GA DC?", author: "everyone", photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjH7bu177jTAhVGPiYKHQtsD6gQjRwIBw&url=http%3A%2F%2Fwww.homedepot.com%2Fb%2FBath-Bathroom-Sinks%2FN-5yc1vZbzb0&psig=AFQjCNG4Ksfuz8182Tfs1-NiMa3jSZ4sBA&ust=1492978216700159", text: "Seriously, what's the deal?")

hipsters.comments.create(author: "Fred Davis" , text: "I'm sleepy guys, good night.")
hipsters.comments.create(author: "Tres Way" , text: "Good night.")
sweet_tunes.comments.create(author: "Stevie Wonder", text: "Bootsy, these seem like the rants of a 14 year old girl.")
sweet_tunes.comments.create(author: "Miles Davis", text: "Sometimes I use my mouthpiece to smoke crack")
water_pressure.comments.create(author: "Curtis Ostle", text: "This is quite worrisome")
