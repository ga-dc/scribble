# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Comment.destroy_all
Post.destroy_all

posts = Post.create([
  {author: "Jim", text: "This is a long blog post.", title: "This, too, is a Blog Post"},
  {author: "Christine", text: "This is also a long blog post.", title: "This is a Blog Post"},
  {author: "Ted", text: "1. The Industrial Revolution and its consequences have been a disaster for the human race. They have greatly increased the life-expectancy of those of us who live in “advanced” countries, but they have destabilized society, have made life unfulfilling, have subjected human beings to indignities, have led to widespread psychological suffering (in the Third World to physical suffering as well) and have inflicted severe damage on the natural world. The continued development of technology will worsen the situation. It will certainly subject human beings to greater indignities and inflict greater damage on the natural world, it will probably lead to greater social disruption and psychological suffering, and it may lead to increased physical suffering even in “advanced” countries.", title: "INDUSTRIAL SOCIETY AND ITS FUTURE"},
  {author: "Ted K", text: "2. The industrial-technological system may survive or it may break down. If it survives, it MAY eventually achieve a low level of physical and psychological suffering, but only after passing through a long and very painful period of adjustment and only at the cost of permanently reducing human beings and many other living organisms to engineered products and mere cogs in the social machine. Furthermore, if the system survives, the consequences will be inevitable: There is no way of reforming or modifying the system so as to prevent it from depriving people of dignity and autonomy. 3. If the system breaks down the consequences will still be very painful. But the bigger the system grows the more disastrous the results of its breakdown will be, so if it is to break down it had best break down sooner rather than later.", title: "INDUSTRIAL SOCIETY AND ITS FUTURE"},
  ])

comments  = Comment.create([
  {author: "Bill", text: "Terrible blog. Fuck you.", post_id: Post.find_by(author: "Ted").id},
  {author: "Bill2", text: "Terrible blog. Fuck you.", post_id: Post.find_by(author: "Ted").id},
  {author: "Bill3", text: "Terrible blog. Fuck you.", post_id: Post.find_by(author: "Ted").id}
])
