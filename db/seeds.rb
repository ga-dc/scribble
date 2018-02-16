# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

Post.create(title: 'Green day giga pets rush hour crop tops', author: 'Somebody', body:'Crew cut wild cherry pepsi end of the road sports utility vehicles bye bye bye big lebowski. Cut-off jean shorts destiny’s child snapple chia pet personalized mixtapes encarta, toy story tupac shakur blockbuster video courtney love. Sonic the hedgehog members only jackets spiked hair space jam cable modem.')

Post.create(title: 'Pop punk bill clinton atlanta summer olympics bye bye bye', author: 'Somebody', body:'Dawg central perk rayon shirts kool-aid man, velcro sneakers blur carpenter pants deep blue. Be kind rewind bomber jacket flip flops dotcom bubble savage garden bop it. Body piercings game boy color life is like a box of chocolates wearing your cap backwards punk, new jack city piercings america online smarter child dawson’s creek baseball jacket.')

Post.create(title: 'Stretch armstrong instant messaging braveheart will smith', author: 'Somebody', body:'Blockbuster video men in black spiked hair la gear tupac shakur adidas. Playa inflatable furniture kurt cobain backstreet boys. Turtlenecks pearl jam savage garden gettin’ jiggy wit it vanilla ice. Internet korn baby got back I will be your father figure. Yin yang seinfeld nirvana garth brooks.')

Comment.create(author:'Glow in the dark', body: 'Ross and rachel cory matthews fargo fila yin yang turquoise.')

Comment.create(author: 'stickers fly', body: 'Oakleys gangsta rap fila, scrunchies forrest gump beavis and butthead fargo accent braids ken griffey jr.')

Comment.create(author: 'Alanis morissette', body: 'rayon shirts marky mark chat rooms kazaa, personal computer hot pockets the mighty ducks furby lisa frank mia hamm.')

Comment.create(author: 'Extreme sports', body: 'kurt cobain sega genesis leotards necklaces with your name on a grain of rice. Stonewashed blue jeans titanic sublime life is like a box of chocolates.')