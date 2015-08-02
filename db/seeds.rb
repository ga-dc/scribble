Comment.destroy_all
Post.destroy_all

myway = Post.create(author: "SinatraFan", title: "My Way", summary: "He did it his way. A defining song by a defining singer.", body: "Yes, it was my way", video_url: "https://www.youtube.com/embed/5AVOpNR2PIs", topic: "classics")
nyny = Post.create(author: "SinatraFan", title: "New York, New York", summary: "A moving tribute to the city that never sleeps.", body: "If I can make it there, I can make it anywhere.", video_url: "https://www.youtube.com/embed/K-0nNWOKK2Q", topic: "classics")
Comment.create(user: "New Yorker", title: "I LOVE THIS SONG!!1!", body: "One of my absolute favorites. They still play it after every Yankee game, and I associate that song with some really magical moments.", post: nyny)
Comment.create(user: "SoxLover", title: "not my favorite", body: "new yorkers smell", post: nyny)
