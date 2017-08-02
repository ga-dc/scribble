# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

puppies = Post.create(title: 'Puppies', content: 'A puppy is a juvenile dog. Some puppies can weigh 1–3 lb (0.45–1.36 kg), while larger ones can weigh up to 15–23 lb (6.8–10.4 kg). All healthy puppies grow quickly after birth. A puppy\'s coat color may change as the puppy grows older, as is commonly seen in breeds such as the Yorkshire Terrier. In vernacular English, puppy refers specifically to dogs, while pup may often be used for other mammals such as seals, giraffes, or guinea pigs.')

wine = Post.create(title: 'Wine', content: 'Wine (from Latin vinum) is an alcoholic beverage made from grapes, generally Vitis vinifera, fermented without the addition of sugars, acids, enzymes, water, or other nutrients.[1] Yeast consumes the sugar in the grapes and converts it to ethanol and carbon dioxide. Different varieties of grapes and strains of yeasts produce different styles of wine. These variations result from the complex interactions between the biochemical development of the grape, the reactions involved in fermentation, the terroir, and the production process. Many countries enact legal appellations intended to define styles and qualities of wine. These typically restrict the geographical origin and permitted varieties of grapes, as well as other aspects of wine production. What\'s your favorite type?')

punta_cana = Post.create(title: 'Punta Cana', content: 'Punta Cana, the easternmost tip of the Dominican Republic, abuts the Caribbean Sea and the Atlantic Ocean. It\'s a region known for its 32km stretch of beaches and clear waters. The Bávaro area and Punta Cana combine to form what\'s known as La Costa del Coco, or the Coconut Coast, an area of lavish, all-inclusive resorts. It\'s popular for zip-lining, windsurfing, kayaking and sailing.')

puppies.comments.create(text: 'puppies rock!')
puppies.comments.create(text: 'adopt, don\'t shop')

wine.comments.create(text: 'Chardonnay or Pinot Noir')

punta_cana.comments.create(text: 'Love Punta Cana! Been there 7 times!')
