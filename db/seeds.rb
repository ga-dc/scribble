Comment.destroy_all
Post.destroy_all
Category.destroy_all
Tag.destroy_all

cats = Post.create(title: "Cats", text: "I think that cats are better than dogs!")
  cats.comments.create(text: "I agree!")
  cats.comments.create(text: "Wrong! Dogs are better!")

paris = Post.create(title: "Paris", text: "Has anyone ever been to Paris?")
  paris.comments.create(text: "Nope, but I heard Parisians are snobby.")
  paris.comments.create(text: "Don't you think you're overgeneralizing?")

doggy_road_trip = Post.create(title: "Doggy Road Trip?", text: "I am taking my beagle with me on a road trip. Does anyone have advice regarding how often I need to stop, how to keep her calm, etc? This is her first time traveling.")
  doggy_road_trip.comments.create(text: "I recommend stopping every couple hours to let her stretch her legs, tinkle, etc.")
  doggy_road_trip.comments.create(text: "You might need to stop more or less often than that. Just pay attention to her; she'll whine if she needs you to stop.")

pets = Category.create(name: "Pets")
travel = Category.create(name: "Travel")

Tag.create(post_id: 1, category_id: 1)
Tag.create(post_id: 2, category_id: 2)
Tag.create(post_id: 3, category_id: 1)
Tag.create(post_id: 3, category_id: 2)
