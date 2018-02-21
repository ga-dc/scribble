# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# <Prof Kevon explained to me how to display the comments on the same page of the post using a varible.>
Post.destroy_all
Comment.destroy_all

p1 = Post.create(title: 'The feeling of his penis pudding seeping down my throat got my sex wee flowing quicker than snot off a whip.', author: 'Sassy Kat', 
text: 'Froth est, sugar cream froth, whipped affogato siphon caramelization cup single shot lungo. Lungo sweet rich white, turkish mazagran brewed cultivar as flavour et redeye. Dripper chicory robusta et, percolator a, french press, caramelization crema cultivar percolator blue mountain. Aftertaste espresso aroma, siphon, robusta redeye robusta trifecta rich. Acerbic, macchiato, mazagran a coffee pumpkin spice percolator con panna to go saucer.')

p2 = Post.create(title: 'Within no time, I could feel the shitty love mayonnaise leaking from my Mavis Fritter and all over my vertical smile.', author: 'Sassy Nat', 
text: 'So robust brewed redeye flavour at saucer caramelization spoon con panna lungo. Single origin wings, milk, spoon cinnamon, galão mazagran caramelization aroma sweet. Single shot and, arabica grounds cup caffeine americano. Flavour blue mountain bar kopi-luwak ut variety rich shop.')

p3 = Post.create(title: 'I awoke the next morning with my whispering eye still foaming. I thought it was over but his chorizo howitzer had other ideas.', author: 'Sassy Matt', 
text: 'Sweet iced et ristretto decaffeinated, beans est as foam strong. Caramelization, id sweet extraction coffee chicory decaffeinated. Cup chicory crema steamed single shot cinnamon froth. Instant, organic filter, flavour espresso spoon, foam sugar fair trade blue mountain black caramelization.')

Comment.create(author: ' By now, my ladytown was seeping like Adele waiting for Greggs to open.', text: "Pommy ipsum stop arsing around Victoria sponge cake naff narky and, had a barney with the inlaws a comely wench well fit don't get your knickers in a twist the chippy. Morris dancers The Doctor barmy, chuffed. Time Lord a tenner easy peasy bogroll Queen Elizabeth squiffy have a butcher's at this, nosh slap-head laughing gear nowt The Doctor, and thus bossy britches bovver boots throw a spanner in the works pot noodle. Treacle bobby a comely wench apple and pears ridicule, scatterbrained scrubber bottled it. A bottle of plonk gravy cheese and chips up the duff ever so done up like a kipper clock round the earhole, brainbox spiffing in the jacksy.", post: p1)
Comment.create(author: ' By now, my ladytown was seeping like Adele waiting for Greggs to open.', text: "Pommy ipsum stop arsing around Victoria sponge cake naff narky and, had a barney with the inlaws a comely wench well fit don't get your knickers in a twist the chippy. Morris dancers The Doctor barmy, chuffed. Time Lord a tenner easy peasy bogroll Queen Elizabeth squiffy have a butcher's at this, nosh slap-head laughing gear nowt The Doctor, and thus bossy britches bovver boots throw a spanner in the works pot noodle. Treacle bobby a comely wench apple and pears ridicule, scatterbrained scrubber bottled it. A bottle of plonk gravy cheese and chips up the duff ever so done up like a kipper clock round the earhole, brainbox spiffing in the jacksy.", post: p2)

Comment.create(author: 'Da Vinci load', text: "Pommy ipsum tip-top tally-ho bangers and mash roast beef ever so lovely completely crackers, cor blimey' roast beef copped a bollocking Doctor Who mince pies and on his tod beefeater, doolally the dog's dinner posh nosh middle class Bad Wolf golly gosh. Queen Elizabeth Sonic Screwdriver warts and all Geordie fancy a cuppa, manky curry sauce. Fake tan scones they can sod off Southeners is she 'avin a laugh Doctor Who jellied eels a tad, naff off the fuzz have a gander spiffing anorak half-inch it. Rubbish bits 'n bobs hedgehog up North knackered, Geordie fried toast.", post: p2)
Comment.create(author: 'Da Vinci load', text: "Pommy ipsum tip-top tally-ho bangers and mash roast beef ever so lovely completely crackers, cor blimey' roast beef copped a bollocking Doctor Who mince pies and on his tod beefeater, doolally the dog's dinner posh nosh middle class Bad Wolf golly gosh. Queen Elizabeth Sonic Screwdriver warts and all Geordie fancy a cuppa, manky curry sauce. Fake tan scones they can sod off Southeners is she 'avin a laugh Doctor Who jellied eels a tad, naff off the fuzz have a gander spiffing anorak half-inch it. Rubbish bits 'n bobs hedgehog up North knackered, Geordie fried toast.", post: p3)
