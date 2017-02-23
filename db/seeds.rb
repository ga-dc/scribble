# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

hipsterpost = Post.create(title: "Mixtape Ethical Yuccie", text: "Enamel pin prism wayfarers chia schlitz sustainable. Before they sold out tote bag direct trade fap, synth blog blue bottle hoodie pitchfork quinoa. Actually brooklyn photo booth, hot chicken selvage street art drinking vinegar pug distillery taxidermy blog pickled stumptown deep v. Fingerstache enamel pin quinoa synth iceland fixie. Neutra pork belly trust fund, fap fashion axe bespoke tilde put a bird on it sartorial tacos mixtape franzen. Tattooed disrupt schlitz, pickled beard small batch hashtag paleo man bun. Swag shoreditch unicorn echo park 90's, kale chips you probably haven't heard of them lumbersexual paleo etsy kombucha subway tile bushwick tumeric.")

hipstercomment = Comment.create(text: "Art party poutine coloring book hammock hexagon. Roof party cray copper mug leggings beard. Vinyl shoreditch jean shorts, farm-to-table XOXO four loko fap swag coloring book. Tote bag edison bulb plaid, PBR&B single-origin coffee photo booth schlitz air plant succulents lumbersexual before they sold out butcher. Deep v quinoa mixtape biodiesel, keytar fashion axe tumeric organic.", post_id: 1)
