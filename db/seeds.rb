# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'active_record'


# models
require_relative '../app/models/comment'
require_relative '../app/models/post'



Comment.destroy_all
Post.destroy_all

culture = Post.create(title: "Culture", author: "hipsterjo", content: "There are more than 80 different ethnic groups in Ethiopia with just as many languages and over 200 dialects are spoken throughout the country.
Ethiopia is the only country in Africa with its own unique script.
Ethiopia claims to hold the Ark of the Covenant as well as a piece of the True Cross on which Jesus was crucified.
Ethiopia is known as the Cradle of Mankind, with some of the earliest ancestors found buried in the soil.  Lucy (3.5 million years old), the most famous fossils found, were unearthed in Hadar.
Ethiopia remains one of the only nations in Africa never to be colonized.  It was occupied briefly by the Italians from 1936 to 1941.
Ethiopia is home to 9 UNESCO World Heritage sites, more than any other country in Africa.", likes: 3)




geography = Post.create(title: "Geography", author: "sunny tony", content: "
The area of Ethiopia is 1,104,300 sq. km, which makes it approximately as big as France and Spain combined.
The capital of Ethiopia is Addis Ababa, which means new flower in Amharic.  The altitude is 2,355m (7,726 ft), making it the 3rd highest capital city in the world.  It is also the diplomatic capital of Africa.
More than 70% of Africa's mountains are found in Ethiopia.  Probably due to the high altitude in the country, Ethiopians are famous for being great long distance runners.
Lake Tana is the source of the Blue Nile River, which meets the White Nile River in Sudan to form the Great Nile River. Lake Tana supplies 85% of the water to the Great Nile River.
The Danakil Depression is home to one of the lowest points on the African continent - Dallol, at 116m below sea level - and one of the only lava lakes in the world - at Erta Ale volcano.
The Great Rift Valley, the most significant physical detail on the planet that is visible from space, cuts through Ethiopia from the northeast to the south of the country", likes: 2)

time = Post.create(title: "Time", author: "King Minelik", content: "Ethiopia follows the Julian calendar consisting of 12 months of 30 days each and a 13th month of 5 or 6 days.  It is roughly 7 and a half years behind the Gregorian calendar.
The Ethiopian fiscal year begins on 8 July and the Ethiopian new year begins on 11 September (12 September in leap years).  Ethiopians will ring in the year 2005 on 11 September, 2012.
As with many equatorial countries, the sun dictates time in Ethiopia.  The sunrise marks the beginning of the day and the sunset marks the end of the day.  What most of the world would call 7:00, Ethiopians would call 1:00.  Both noon and midnight are 6:00 in Ethiopia.", likes: 15)

food_drinks = Post.create(title: "Food & Drink", author: "Eyasu the food God", content: "Coffee, one of the world's most popular beverages, was discovered in Ethiopia, in the region of Kaffa.
Ethiopia has the largest per capital density of cattle in Africa and the 10th largest in the world.
Teff, the grain used to make the Ethiopian staple injera, is an ancient grain believed to have originated in Ethiopia between 4000BC and 1000BC.
 It is the smallest grain in the world and is rich in calcium, phosphorous, iron, copper, aluminum, barium and thiamine and is a good source of protein, amino acids, carbohydrates and fiber.  It is a great gluten-free option.", likes: 10 )

jimms_comment = culture.comments.create(content: "hippy",author: "Jimmy")
minnies_comment = geography.comments.create(content:"that was a great article", author: "Minnie" )
johns_comment = food_drinks.comments.create(content: "great food",author: "Johnny")
johns_comment = time.comments.create(content: "Nice, can I go to Ethiopia and say I am from the future?", author: "Johnny")
jimms_comment = food_drinks.comments.create(content: "A bit spicy",author: "Jimmy")
