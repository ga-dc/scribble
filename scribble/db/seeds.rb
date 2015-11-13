# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "First Blog Post", text:"Why start a blog? Being a blogger gives you automatic entrée to write about a sector,
interview industry experts, attend conferences in the field and ultimately, define and refine your point of view to get the attention of those in
 your chosen field who may want to hire you. Being a blogger, in short, provides a credential.")
post3 = Post.create(title: "General Assembly Bootcamp", text:" Demand for programmers has surged since 2008. Programmers rarely have trouble finding a job,
and college students are flocking to computer science as a safe route to employment.During a week of podcasts about programmer education, Software Engineering Daily found that coding bootcamps and online courses offer cheap,
effective alternatives to the classic four-year computer science degree plan.")
post5 = Post.create(title: "JavaScript", text: "Installations of JavaScript on servers have had growing momentum for a while and more than two dozen popular frameworks exist to do it. SilkJS, MongoDB, Aptana, CouchDB, Domino (IBM),
SAP HANA XS Engine, TeaJS and Opera all have server-side JavaScript frameworks out these days that have varying degrees of popularity among the tech crowd. The most popular princess at the JavaScript server ball though is Node.js.
“If you want a job, Node.js is the thing to hop into right now,” Lacker said. “Something different is happening with Node.js. It is flipping the typical script.”
The typical script goes something like this: you have two sides of a developer team, one on the backend and one on the front. The backend team is running the servers in some compiled (as opposed to scripting) language like C# or Java.
The front end team is working in HTML, CSS, JavaScript and native languages like Swift, Objective-C or Java. Lacker’s point is that the developers tend to work best in their primary language.
The popularity of JavaScript means that just about every Web developer out there can now become a server-side developer without having to change the basic rules of engagement.")
post6 = Post.create(title: "Ruby on Rails", text:"Ruby on Rails is an open-source web framework that's optimized for programmer happiness and beautiful code. I created Rails in 2003 by extracting it from Basecamp and continue to lead the development.

Hundreds of thousands of programmers around the world have built amazing applications using Rails. Some of the more famous include Twitter, Shopify, 500px, and Github.")

comment1= Comment.create(text: "I love this blog so much!")
comment2 = Comment.create(text:"I love this blog so much!")
comment3 = Comment.create(text:"I love this blog so much!")

comment1.post_id = post1
comment2.post_id = post3
comment3.post_id = post5
