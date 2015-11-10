Post.destroy_all
Comment.destroy_all

posts = Post.create([

{title: "Encounter at Farpoint",
author: "Jean-Luc Picard",
content: "Yes, absolutely, I do indeed concur, wholeheartedly! Flair is what marks the difference between artistry and mere competence. What? We're not at all alike! Some days you get the bear, and some days the bear gets you. Maybe if we felt any human loss as keenly as we feel one of those close to us, human history would be far less bloody. The look in your eyes, I recognize it. You used to have it for me. The Federation's gone; the Borg is everywhere! Could someone survive inside a transporter buffer for 75 years? Congratulations - you just destroyed the Enterprise. I'll be sure to note that in my log.",
image_url: "http://placehold.it/350x150",},

{title: "Where No One Has Gone Before",
author: "Deanna Troi",
content: "Mr. Crusher, ready a collision course with the Borg ship. Not if I weaken first. And blowing into maximum warp speed, you appeared for an instant to be in two places at once. Earl Grey tea, watercress sandwiches... and Bularian canapés? Are you up for promotion? The Federation's gone; the Borg is everywhere! I think you've let your personal feelings cloud your judgement. Some days you get the bear, and some days the bear gets you. Maybe if we felt any human loss as keenly as we feel one of those close to us, human history would be far less bloody. Fate protects fools, little children and ships named Enterprise. But the probability of making a six is no greater than that of rolling a seven. I am your worst nightmare!",
image_url: "http://placehold.it/350x150",},

{title: "Shades of Grey",
author: "Commander Data",
content: "Fate protects fools, little children and ships named Enterprise. The look in your eyes, I recognize it. You used to have it for me. My oath is between Captain Kargan and myself. Your only concern is with how you obey my orders. Or do you prefer the rank of prisoner to that of lieutenant? This is not about revenge. This is about justice. When has justice ever been as simple as a rule book? Now, how the hell do we defeat an enemy that knows us better than we know ourselves? We know you're dealing in stolen ore. But I wanna talk about the assassination attempt on Lieutenant Worf. Flair is what marks the difference between artistry and mere competence.",
image_url: "http://placehold.it/350x150",},

{title: "True Q",
author: "Jean-Luc Picard",
content: "You bet I'm agitated! I may be surrounded by insanity, but I am not insane. I'll alert the crew. Is it my imagination, or have tempers become a little frayed on the ship lately? I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? A lot of things can change in twelve years, Admiral. But the probability of making a six is no greater than that of rolling a seven. You're going to be an interesting companion, Mr. Data. Shields up! Rrrrred alert!",
image_url: "http://placehold.it/350x150",},

{title: "All Good Things...",
author: "Jean-Luc Picard",
content: "Your head is not an artifact! About four years. I got tired of hearing how young I looked. Shields up! Rrrrred alert! We could cause a diplomatic crisis. Take the ship into the Neutral Zone This should be interesting. Wait a minute - you've been declared dead. You can't give orders around here. I'd like to think that I haven't changed those things, sir. Some days you get the bear, and some days the bear gets you. The game's not big enough unless it scares you a little. Maybe we better talk out here; the observation lounge has turned into a swamp. That might've been one of the shortest assignments in the history of Starfleet. But the probability of making a six is no greater than that of rolling a seven.",
image_url: "http://placehold.it/350x150",}])

comments = Comment.create([

{:content=>"Damage report! Your head is not an artifact! Captain, why are we out here chasing comets?", :username=>"Worf", :post=>Post.find_by(title: "Encounter at Farpoint")},
{:content=>"What's a knock-out like you doing in a computer-generated gin joint like this?", :username=>"Wesley Crusher", :post=>Post.find_by(title: "Encounter at Farpoint")},
{:content=>"I'll alert the crew. The Federation's gone; the Borg is everywhere!", :username=>"Geordi", :post=>Post.find_by(title: "Encounter at Farpoint")},

{:content=>"Damage report! Your head is not an artifact! Captain, why are we out here chasing comets?", :username=>"Worf", :post=>Post.find_by(title: "Where No One Has Gone Before")}, {:content=>"What's a knock-out like you doing in a computer-generated gin joint like this?", :username=>"Wesley Crusher", :post=>Post.find_by(title: "Where No One Has Gone Before")}, {:content=>"I'll alert the crew. The Federation's gone; the Borg is everywhere!", :username=>"Geordi", :post=>Post.find_by(title: "Where No One Has Gone Before")},

{:content=>"Damage report! Your head is not an artifact! Captain, why are we out here chasing comets?", :username=>"Worf", :post=>Post.find_by(title: "Shades of Grey")}, {:content=>"What's a knock-out like you doing in a computer-generated gin joint like this?", :username=>"Wesley Crusher", :post=>Post.find_by(title: "Shades of Grey")}, {:content=>"I'll alert the crew. The Federation's gone; the Borg is everywhere!", :username=>"Geordi", :post=>Post.find_by(title: "Shades of Grey")},

{:content=>"Damage report! Your head is not an artifact! Captain, why are we out here chasing comets?", :username=>"Worf", :post=>Post.find_by(title: "True Q")}, {:content=>"What's a knock-out like you doing in a computer-generated gin joint like this?", :username=>"Wesley Crusher", :post=>Post.find_by(title: "True Q")}, {:content=>"I'll alert the crew. The Federation's gone; the Borg is everywhere!", :username=>"Geordi", :post=>Post.find_by(title: "True Q")},

{:content=>"Damage report! Your head is not an artifact! Captain, why are we out here chasing comets?", :username=>"Worf", :post=>Post.find_by(title: "All Good Things...")}, {:content=>"What's a knock-out like you doing in a computer-generated gin joint like this?", :username=>"Wesley Crusher", :post=>Post.find_by(title: "All Good Things...")}, {:content=>"I'll alert the crew. The Federation's gone; the Borg is everywhere!", :username=>"Geordi", :post=>Post.find_by(title: "All Good Things...")}
])
