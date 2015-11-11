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
  {text: "13. Many leftists have an intense identification with the problems of
   groups that have an image of being weak (women), defeated (American
   Indians), repellent (homosexuals), or otherwise inferior. The leftists
   themselves feel that these groups are inferior. They would never admit
   it to themselves that they have such feelings, but it is precisely
   because they do see these groups as inferior that they identify with
   their problems. (We do not suggest that women, Indians, etc., ARE
   inferior; we are only making a point about leftist psychology).

   14. Feminists are desperately anxious to prove that women are as
   strong as capable as men. Clearly they are nagged by a fear that women
   may NOT be as strong and as capable as men.

   15. Leftists tend to hate anything that has an image of being strong,
   good and successful. They hate America, they hate Western
   civilization, they hate white males, they hate rationality. The
   reasons that leftists give for hating the West, etc. clearly do not
   correspond with their real motives. They SAY they hate the West
   because it is warlike, imperialistic, sexist, ethnocentric and so
   forth, but where these same faults appear in socialist countries or in
   primitive cultures, the leftist finds excuses for them, or at best he
   GRUDGINGLY admits that they exist; whereas he ENTHUSIASTICALLY points
   out (and often greatly exaggerates) these faults where they appear in
   Western civilization. Thus it is clear that these faults are not the
   leftist's real motive for hating America and the West. He hates
   America and the West because they are strong and successful.", title: "FEELINGS OF INFERIORITY", user_id: User.first.id},
  {text: "6. Almost everyone will agree that we live in a deeply troubled
   society. One of the most widespread manifestations of the craziness of
   our world is leftism, so a discussion of the psychology of leftism can
   serve as an introduction to the discussion of the problems of modern
   society in general.

   7. But what is leftism? During the first half of the 20th century
   leftism could have been practically identified with socialism. Today
   the movement is fragmented and it is not clear who can properly be
   called a leftist. When we speak of leftists in this article we have in
   mind mainly socialists, collectivists, 'politically correct' types,
   feminists, gay and disability activists, animal rights activists and
   the like. But not everyone who is associated with one of these
   movements is a leftist. What we are trying to get at in discussing
   leftism is not so much a movement or an ideology as a psychological
   type, or rather a collection of related types. Thus, what we mean by
   'leftism' will emerge more clearly in the course of our discussion of
   leftist psychology (Also, see paragraphs 227-230.)

   8. Even so, our conception of leftism will remain a good deal less
   clear than we would wish, but there doesn't seem to be any remedy for
   this. All we are trying to do is indicate in a rough and approximate
   way the two psychological tendencies that we believe are the main
   driving force of modern leftism. We by no means claim to be telling
   the WHOLE truth about leftist psychology. Also, our discussion is
   meant to apply to modern leftism only. We leave open the question of
   the extent to which our discussion could be applied to the leftists of", title: "THE PSYCHOLOGY OF MODERN LEFTISM", user_id: User.first.id},
  {text: "1. The Industrial Revolution and its consequences have been a disaster for the human race. They have greatly increased the life-expectancy of those of us who live i “advanced” countries, but they have destabilized society, have made life unfulfilling, have subjected human beings to indignities, have led to widespread psychological suffering (in the Third World to physical suffering as well) and have inflicted severe damage on the natural world. The continued development of technology will worsen the situation. It will certainly subject human beings to greater indignities and inflict greater damage on the natural world, it will probably lead to greater social disruption and psychological suffering, and it may lead to increased physical suffering even in “advanced” countries.", title: "INDUSTRIAL SOCIETY AND ITS FUTURE", user_id: User.first.id},
  {text: "2. The industrial-technological system may survive or it may break down. If it survives, it MAY eventually achieve a low level of physical and psychological suffering, but only after passing through a long and very painful period of adjustment and only at the cost of permanently reducing human beings and many other living organiss to engineered products and mere cogs in the social machine. Furthermore, if the system survives, the consequences will be inevitable: There is no way of reforming or modifying the system so as to prevent it from depriving people of dignity and autonomy. 3. If the system breaks down the consequences will still be very painful. But the bigger the system grows the more disastrous the results of its breakdown will be, so if it is to break down it had best break down sooner rather than later.", title: "INDUSTRIAL SOCIETY AND ITS FUTURE", user_id: User.first.id},
  ])
comments  = Comment.create([
  {author: "Bill", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id},
  {author: "Bill2", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id},
  {author: "Bill3", text: "Terrible blog. What's wrong with you?", post_id: Post.first.id}

])
