# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all


Post.create(topic: 'I Love the 90s', author: 'Ryu', content: 'Street fighter ii windows 95 korn bye bye bye eminem dotcom bubble. Fresh prince of bel-air my heart will go on I will be your father figure charlotte hornets new kids on the block, crimped hair skidz and zubas chat rooms ghost pottery scene mazda mpv koosh ball. George foreman grill alanis morissette g-shocks did I do that dennis rodman, george clooney cornrows life is like a box of chocolates roseanne barr lisa frank snoop dogg. Free willy atlanta braves acid wash kurt cobain real world steve urkel. Sitcoms generation Y wild cherry pepsi parting your hair down the middle digital pets seinfeld.')
Post.create(topic: 'Music', author: 'Anna', content: 'Kazaa bop it marky mark roseanne. Necklaces with your name on a grain of rice pearl jam rush hour wayne gretzky leopard print toyota previa. Clueless frasier enrique iglesias hoodies mario lemieux push pencils, khaki flat tops wearing your cap backwards independence day. The macarena baseball jacket reebok pumps gatorade polo shirts with popped collars light up sneakers, personalized mixtapes denim jackets coral trl how do you like them apples the rachel haircut.')

Comment.create(author:'Denzel', content:'Denzel washington rocko’s modern life braveheart bleached hair chia pet. Aerosmith macaulay culkin I will be your father figure slap bracelet pogs whitney houston. Move it football head minesweeper velcro sneakers pokémon bubble tape sega genesis. Ford explorer extreme sports pizza bagels zack morris lisa frank, furby aviators jurassic park ford taurus kurt cobain. Chronic skate tees hottie oregon trail.')
Comment.create(author:'Mariah', content:'Royal stewart tartan ross and rachel mariah carey cutoff jeans, encarta nylon windbreaker beanie babies keds. Bubble tape atlanta summer olympics glow in the dark stickers girl power, umbro shorts toyota supra cheetos jim carrey. Cut-off jean shorts internet smashing pumpkins playa sega genesis, oversized sweaters scrolling text hip hop adidas hootie and the blowfish.')
