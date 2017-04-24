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
	{title: "I have seen the light", content: "Earned media personas piverate Steve Jobs responsive affordances pair programming pair programming thought leader grok paradigm sticky note ideate pivot. Responsive thought leader pair programming affordances physical computing minimum viable product intuitive pivot. Iterate affordances prototype big data sticky note physical computing intuitive engaging venture capital."}, 
	{title: "Some words the Jimmy", content: "Intuitive ideate Steve Jobs iterate responsive piverate long shadow engaging minimum viable product earned media 360 campaign. User centered design human-centered design 360 campaign human-centered design integrate agile co-working earned media Steve Jobs user story viral. Experiential prototype fund co-working parallax convergence food-truck earned media. Actionable insight big data thought leader SpaceTeam big data thinker-maker-doer actionable insight workflow convergence workflow iterate unicorn earned media."},
	{title: "My middle name is Whiskey", content: "Earned media personas piverate Steve Jobs responsive affordances pair programming pair programming thought leader grok paradigm sticky note ideate pivot. Responsive thought leader pair programming affordances physical computing minimum viable product intuitive pivot. Iterate affordances prototype big data sticky note physical computing intuitive engaging venture capital."}])

comments = Comment.create([
	{content: "Ha, I disagree. Yourr dumb", post_id: 1},
	{content: "I think my opinion is super important thanks to the internet", post_id: 1},
	{content: "First", post_id: 2}, 
	{content: "I thought there was an open bar here.", post_id: 2}])



