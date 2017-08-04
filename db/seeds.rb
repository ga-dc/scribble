# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

Post.create(title: 'Prosthetics that feel more natural, how mushrooms may help save bees, and more', post: 'Please enjoy your roundup of TED-related news: Prosthetics that feel more natural. A study in Science Robotics lays out a surgical technique developed by Shriya Srinivasan, Hugh Herr and others that may help prosthetics feel more like natural limbs. During an amputation, the muscle pairs that allow our brains to sense how much force is ', date: '7/3/17')
Post.create(title: 'What if? … and other questions that lead to big ideas: The talks of TED@UPS', post: 'What if one person could change the world? What if we could harness our collective talent, insight and wisdom? And what if, together, we could spark a movement with positive impact far into the future?', date: '7/21/17')
Post.create(title: 'Our podcast “Sincerely, X” co-produced with Audible now available free worldwide', post: ' Last year, TED and Audible co-produced a new audio series that invited speakers to share ideas—anonymously. Our goal was to make room for an entirely new trove of ideas: those that could only be broadcast publicly if the speaker’s identity remained private.', date: '7/21/17')
