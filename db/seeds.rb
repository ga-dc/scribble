Post.destroy_all
Comment.destroy_all


posts = Post.create([
  {author:"Jay Hughes", body: "Dissident often confesses a lunatic. A maestro from a somnambulist, a carelessly irreconcilable swamp, and the feverishly slovenly alchemist are what got Nicolas into trouble. Some ribbon defined by a snow laughs and drinks all night with an espadrille behind the debutante.", title: "Lead Deputy Coordinator of the Task Force on Dining Communications"},
  {author:"Jay Hughes", body: "Dissident often confesses a lunatic. A maestro from a somnambulist, a carelessly irreconcilable swamp, and the feverishly slovenly alchemist are what got Nicolas into trouble. Some ribbon defined by a snow laughs and drinks all night with an espadrille behind the debutante.", title: "Vice Chancellor of Facilities Relations for the Office of Community Partnerships"},
  {author:"Jay Hughes", body: "Dissident often confesses a lunatic. A maestro from a somnambulist, a carelessly irreconcilable swamp, and the feverishly slovenly alchemist are what got Nicolas into trouble. Some ribbon defined by a snow laughs and drinks all night with an espadrille behind the debutante.", title: "Interim Associate Provost for Athletic Maintenance of the Committee on Academic Compliance"}
])

comments = Comment.create([
  {author: "Misunderstood Warrior", body: "Fritzl-admiring flaps wanker!", post: posts[0]},
  {author: "Phantom Watcher", body: "Flipping twat butler!", post: posts[1]},
  {author: "B-loved Magician", body: "Nutsack voyeur...", post: posts[2]}
  ])
