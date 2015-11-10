# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.destroy_all
Comment.destroy_all

Post.create([
  {author: "Jessie Sims", title: "This is my first post", post_image: "http://images2.alphacoders.com/457/457148.jpg", content: "Ennui normcore hoodie locavore. Semiotics food truck helvetica waistcoat YOLO, banh mi mustache plaid cardigan. Direct trade art party mlkshk readymade. Shoreditch offal venmo, schlitz leggings forage cray twee retro. Cliche XOXO gluten-free, whatever vinyl fap butcher yuccie organic marfa meditation put a bird on it. Forage migas umami, shabby chic sartorial pour-over post-ironic try-hard deep v. Asymmetrical tattooed cray master cleanse.

  Pickled raw denim literally iPhone. Vinyl chia mustache photo booth pour-over blue bottle. Tousled slow-carb four loko, tumblr literally small batch chambray quinoa actually brunch hashtag portland post-ironic. Artisan quinoa poutine tilde. Drinking vinegar gastropub craft beer tumblr trust fund +1, 3 wolf moon sartorial try-hard offal leggings freegan chartreuse letterpress gluten-free. Hoodie photo booth portland, austin typewriter deep v tumblr next level ramps quinoa 90's distillery jean shorts mlkshk. Franzen narwhal mixtape, polaroid food truck deep v freegan brooklyn four dollar toast iPhone whatever synth poutine."},
  {author: "Jackson Barnett", title: "Awesome Things To Do", post_image: "http://www.download-hd-wallpapers.com/wp-content/uploads/2014/08/modern-abstract-art1.jpg", content: "Deep v cliche brooklyn, yr cardigan truffaut gastropub polaroid banh mi scenester biodiesel keffiyeh YOLO portland. Kale chips cold-pressed ethical, slow-carb beard iPhone yr single-origin coffee 90's twee flannel. Before they sold out cornhole VHS 90's meh gastropub food truck fap, leggings lumbersexual authentic mumblecore drinking vinegar flexitarian tousled. Sartorial trust fund 90's mustache. 3 wolf moon single-origin coffee sustainable, brooklyn meggings ennui irony chicharrones jean shorts gluten-free yr portland gastropub etsy. Lo-fi crucifix synth helvetica, leggings paleo slow-carb XOXO. Before they sold out mlkshk four loko truffaut bushwick mustache green juice shoreditch, bicycle rights DIY literally."},
  {author: "Miguel Coleman", title: "Ruby WHAAA??", post_image: "http://hdwallpaperia.com/wp-content/uploads/2014/01/Abstract-Blue-Wallpapers-HD.jpg", content: "Squid cold-pressed banh mi, twee tousled blue bottle mustache tilde actually polaroid four dollar toast cred. Meggings typewriter distillery schlitz flannel skateboard williamsburg dreamcatcher lo-fi, crucifix ethical. Sustainable kinfolk biodiesel typewriter photo booth intelligentsia cornhole godard. Yr 90's schlitz, kale chips bicycle rights meditation whatever brunch swag. Portland street art chillwave, cred keffiyeh humblebrag sriracha waistcoat pabst fingerstache banjo. Neutra lo-fi banjo chicharrones disrupt, single-origin coffee church-key portland tacos. Chartreuse fingerstache waistcoat deep v you probably haven't heard of them cornhole, ethical tacos.

  Pop-up mixtape messenger bag four loko gentrify letterpress narwhal kogi. Artisan knausgaard readymade, next level beard marfa pug distillery. Portland you probably haven't heard of them chia, umami williamsburg craft beer put a bird on it tofu offal artisan green juice mustache art party taxidermy. Banjo disrupt neutra slow-carb. Retro jean shorts occupy, bushwick ethical XOXO before they sold out shoreditch marfa migas slow-carb authentic narwhal whatever tacos. Four dollar toast art party keffiyeh, polaroid farm-to-table 8-bit tofu. Direct trade banjo everyday carry, gastropub normcore polaroid food truck banh mi farm-to-table 3 wolf moon mustache lo-fi."}
])
p1 = Post.find_by(author: "Jessie Sims")

p2 = Post.find_by(author: "Jackson Barnett")

p3 = Post.find_by(author: "Miguel Coleman")



p1.comments.create(content: "I think clients would love this.", author: "Eva Montgomery")

p1.comments.create(content: "Mission accomplished. It's strong, friend.", author: "Lynn Phillips")

p1.comments.create(content: "Just good :)", author: "Sarah Wright")

p2.comments.create(content: "I think I'm crying. It's that splendid.", author: "Nathan Mccoy")

p2.comments.create(content: "My 17 year old mum rates this camera angle very fresh, friend.", author: "Elmer Martinez")

p3.comments.create(content: "This shot has navigated right into my heart.", author: "Alan Gibson")

p3.comments.create(content: "Tremendously thought out! Wow love it!", author: "Tamara Kelley")

p3.comments.create(content: "Such icons, many style, so magnificent", author: "Anita Hill")

p3.comments.create(content: "Nice. So admirable.", author: "Lance Obrien")
