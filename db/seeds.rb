# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.destroy_all
Post.destroy_all

posts = Post.create ([
  {title: "Trotz is Rails", author: "Matthew Murgia", post: "Mandalore lando qui-gon yavin. Sidious naboo kamino darth darth watto leia. Organa windu solo han dagobah. Darth calrissian dantooine organa kit padmé antilles moff. Leia mon darth k-3po windu qui-gon tusken raider mustafar. Organa palpatine vader moff calamari kit c-3po bothan palpatine. Antilles hutt jade c-3po ponda bothan. Kenobi fisto binks antilles anakin fisto vader grievous. Antilles solo solo leia wampa jinn antilles dooku jinn. Wampa yavin solo gamorrean alderaan mothma grievous windu ponda." },

  {title: "Backstrom is Helpers", author: "author2", post: "Ben boba palpatine dooku. Qui-gon anakin kenobi tatooine fisto cade hutt darth. Jabba chewbacca sidious moff. Kessel hutt ben hoth padmé kamino. Binks skywalker jabba darth dooku ahsoka. Solo lando darth ewok antilles skywalker han moff. Jade skywalker organa antilles. Hutt kessel kessel luke grievous. Antilles anakin mustafar fett qui-gonn dantooine zabrak mace. Antilles hutt hutt skywalker. Darth lars utapau cade bothan vader ben. Dantooine darth calrissian yoda lando mon chewbacca ahsoka. Hutt anakin ben qui-gonn." },

  {title: "John Carlson is a Validator", author: "Matthew Murgia", post: "Solo lobot organa dagobah boba coruscant. Solo hoth sidious darth jade kessel. Dooku coruscant owen organa. Fisto skywalker fett mara vader fett chewbacca solo. Palpatine wampa mon qui-gonn solo. Skywalker wedge mandalorians amidala darth. C-3p0 solo darth ben. Baba ahsoka luuke jinn bothan mon jango. Solo jabba skywalker solo hutt anakin lars twi'lek. Antilles antilles grievous sidious secura. Aayla droid hutt alderaan windu chewbacca. Bespin yavin fisto mace antilles organa yoda hutt. Darth hutt solo jawa kenobi darth r2-d2 tatooine solo." }
  ])
