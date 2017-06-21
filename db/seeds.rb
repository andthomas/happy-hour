# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create name: "Paul Vincent", dob: "1988-02-22", email: "paul@vincent.com", password: "chicken"
u2 = User.create name: "Sam Station", dob: "1958-02-12", email: "sam@station.com", password: "chicken"
u3 = User.create name: "Stevie Knicks", dob: "1938-09-22", email: "stevie@knicks.com", password: "chicken"


Venue.destroy_all
v1 = Venue.create name: "The Weeds", location: "300 Oxford St, Paddington", category: "Pub", description: "Warm pud in the heart of Paddington", image: "https://media-cdn.tripadvisor.com/media/photo-s/04/a1/7c/8d/e-w-beck-s-pub.jpg"
v2 = Venue.create name: "Horse and Cart", location: "12 Biggins St, Sydney", category: "Pub", description: "Lovely place for a pint", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmN5NbYXm_yAJRsoO-rSUjZisHDig7lFHBZO01n8FKiSmwcfYS"
v3 = Venue.create name: "Special Bar", location: "66 Clemins St, Ryde", category: "Pub", description: "Nice beers", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgiBqNkq4R7prZfwvbjMXSpQWB3_3alLMlEcS1nVUgviOFE9moiw"
v4 = Venue.create name: "Hand Bar", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY88hs478SRtW-20hxJd9yArNcgRxeho9YaFYG4O0Fug5UPmvU"
v5 = Venue.create name: "Marly Bar", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "https://www.dorchestercollection.com/wp-content/uploads/backup/Principe-Bar---The-Bar.jpg"
v6 = Venue.create name: "The Good Bar", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "http://www.spicebar.com.au/wp-content/uploads/2014/01/Spice-Bar-Restaurant-Mooloolaba-15.jpg"
v7 = Venue.create name: "Get Out Pub", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "http://humber.bar/wp-content/uploads/2014/05/bar-tile1.png"
v8 = Venue.create name: "Cocktail City", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCiDvtiV3jEcw3E5LdKwZF4mv_k-jFiQzU9779S65xHTY0nk"
v9 = Venue.create name: "Another Bar", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "http://www.barmelusine.com/uploads/_1220x602_crop_center-center/bar-melusine-home-page.jpg"




Happyhour.destroy_all
h1 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Monday"
h2 = Happyhour.create start: Time.new(2017,6,20,17,10,0), end: Time.new(2017,6,20,18,10,0), day: "Wednesday"
h3 = Happyhour.create start: Time.new(2017,6,21,17,10,0), end: Time.new(2017,06,21,18,10,0), day: "Friday"
h4 = Happyhour.create start: Time.new(2017,6,21,17,10,0), end: Time.new(2017,06,21,18,10,0), day: "Monday"
h5 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Tuesday"
h6 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Wednesday"
h7 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Thursday"
h8 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Friday"


Deal.destroy_all
d1 = Deal.create drink: "Beer", price: "3.50", description: "Becks, Carlton"
d2 = Deal.create drink: "Wine", price: "5.50", description: "Red, White"
d3 = Deal.create drink: "Spirits", price: "4.00", description: "Vodka, gin, brandy"


u1.venues << v1 << v2 << v5 << v6 << v7 << v8 << v9
u2.venues << v3
u3.venues << v4



v1.happyhours << h1 << h5 << h6 << h7 << h8
v2.happyhours << h2
v3.happyhours << h3
v4.happyhours << h4
v5.happyhours << h4
v6.happyhours << h4
v7.happyhours << h4
v8.happyhours << h4
v9.happyhours << h4



h1.deals << d1
h2.deals << d2
h3.deals << d1
h4.deals << d3
h5.deals << d1
h6.deals << d1
h7.deals << d1
h8.deals << d1


d1.happyhours << h1
d2.happyhours << h2
d3.happyhours << h3
