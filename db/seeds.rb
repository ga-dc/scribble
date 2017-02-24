# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.create!({title: "Another day at GA", author: "John Smith", content: "Put a bird on it food truck cred, shoreditch raclette etsy banh mi seitan. Selfies hella 90's godard VHS. Post-ironic flexitarian jean shorts, lo-fi edison bulb authentic etsy kickstarter echo park squid chicharrones. Letterpress keytar VHS brooklyn, poutine retro man bun cliche kombucha pork belly pour-over. Brunch four loko trust fund pok pok enamel pin heirloom. Banjo fam coloring book street art, tofu farm-to-table selfies chillwave polaroid semiotics poutine intelligentsia swag. Farm-to-table YOLO sustainable XOXO."})

Post.create!({title: "Day two at GA WDI", author: "Johnnnnny SMith", content: "Roof party green juice four loko neutra irony, meditation whatever prism live-edge hammock single-origin coffee vaporware la croix gentrify. Chartreuse knausgaard poutine man bun VHS, four dollar toast sartorial vape. Pitchfork trust fund quinoa, sartorial succulents VHS skateboard pork belly direct trade viral. Squid glossier mlkshk before they sold out vegan poke fam, seitan keffiyeh humblebrag pinterest fixie af skateboard. Locavore readymade stumptown food truck normcore. XOXO church-key thundercats vice vegan typewriter. Readymade fam slow-carb, occupy air plant fingerstache polaroid kitsch vegan viral."})

Comment.create!({author: "Jake",content: " that was so cool"})
Comment.create!({author: "Jim",content: " that was so dafsd cool"})
