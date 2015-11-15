# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Post.destroy_all
  Comment.destroy_all

  Post.create(title: "Cats are the Best Pets", post: "I just want to say that I think cats are the best pets you can have. They are very independent, you don't need to walk them, and they're cuddly and cute. Dogs are a pain because they need to be walked constantly and are just way too hyper sometimes.")

  Post.create(title: "Dogs are the Best", post: "Dogs are the best pets because they are just so happy and giddy! They love you unconditionally and are loyal and fun. They are much better than, say, cats, because cats can be so temporamental. Dogs are just always awesome.")

  Post.create(title: "Hamsters are EH", post: "I've decided today that hamsters are OK pets but they aren't too exciting. Cats and dogs are much better.")

  Post.create(title: "Ferrets are BOO", post: "I visited a pet store today and walked past the ferrets cage. Oh man do they stink! Ferrets are hyper, stinky animals.")
