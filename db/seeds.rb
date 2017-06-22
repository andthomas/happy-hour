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
v1 = Venue.create name: "Strawberry Hills Hotel", location: "453 Elizabeth St, Surry Hills", category: "Pub", description: "Classic pub with a glorious beer garden in the heart of Strawberry Hills", image: "https://media-cdn.tripadvisor.com/media/photo-s/04/a1/7c/8d/e-w-beck-s-pub.jpg", latitude: "33.8865", longitude: "151.2080"
v2 = Venue.create name: "The Royal George", location: "320 George St, Sydney", category: "Pub", description: "Lovely place for a pint", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmN5NbYXm_yAJRsoO-rSUjZisHDig7lFHBZO01n8FKiSmwcfYS", latitude: "33.8662", longitude: "151.2073"
v3 = Venue.create name: "The Rabbit Hole", location: "82 Elizabeth St, Sydney", category: "Pub", description: "Nice beers", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgiBqNkq4R7prZfwvbjMXSpQWB3_3alLMlEcS1nVUgviOFE9moiw", latitude: "33.8662", longitude: "151.2090"
v4 = Venue.create name: "Parsons Bar", location: "3 Kellett St, Potts Point", category: "Bar", description: "The scene to be seen", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY88hs478SRtW-20hxJd9yArNcgRxeho9YaFYG4O0Fug5UPmvU", latitude: "33.8784972", longitude: "151.2186453"
v5 = Venue.create name: "Martin Place Bar", location: "51 Martin Place, Sydney", category: "Bar", description: "The scene to be seen", image: "https://www.dorchestercollection.com/wp-content/uploads/backup/Principe-Bar---The-Bar.jpg", latitude: "33.874772", longitude: "151.2101661"
v6 = Venue.create name: "The Morrison", location: "225 George St, Sydney", category: "Bar", description: "Oysters on a Tuesday", image: "http://www.spicebar.com.au/wp-content/uploads/2014/01/Spice-Bar-Restaurant-Mooloolaba-15.jpg", latitude: "33.8735088", longitude: "151.2091288"
v7 = Venue.create name: "99 on York", location: "99 York St, Sydney", category: "Bar", description: "The scene to be seen", image: "http://humber.bar/wp-content/uploads/2014/05/bar-tile1.png", latitude: "-33.8760025", longitude: "151.2210716"
v8 = Venue.create name: "Shakespeare Hotel", location: "200 Devonshire St, Surry Hills", category: "Pub", description: "The scene to be seen", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCiDvtiV3jEcw3E5LdKwZF4mv_k-jFiQzU9779S65xHTY0nk", latitude: "33.8818305", longitude: "151.2210716"
v9 = Venue.create name: "Jackson's On George", location: "176 George Street, Sydney", category: "Pub", description: "The scene to be seen", image: "http://www.barmelusine.com/uploads/_1220x602_crop_center-center/bar-melusine-home-page.jpg", latitude: "33.8818305", longitude: "151.221071"
v10 = Venue.create name: "El Loco at Slip Inn", location: "111 Sussex St, Sydney", category: "Bar", description: "The scene to be seen", image: "http://s3-ap-southeast-2.amazonaws.com/mrv-static-assets/images/galleries/Slip_Main_Carousel_V1.jpg", latitude: "33.8686853", longitude: "151.2013002"
v11 = Venue.create name: "Charlie Chans", location: "631-635 George St, Sydney", category: "Pub", description: "The scene to be seen", image: "http://www.barsandnightclubs.com.au/assets/images/content/club/sydney//Charlie%20Chans%20-%20George%20Street/Charlie%20Chans%20-%20George%20Street%20-%20Sydney%20-%20Photo04.jpg", latitude: "33.8784964", longitude: "151.2031952"
v12 = Venue.create name: "Pontoon Bar", location: "201 Sussex St, Sydney", category: "Bar", description: "The scene to be seen", image: "http://www.barsandnightclubs.com.au/assets/images/content/club/sydney/Rock%20Lily%20-%20Darling%20Harbour%20-%20Sydney_original.jpg", latitude: "33.8711966", longitude: "151.201997"
v13 = Venue.create name: "Helm Bar", location: "7 Wheat Road, Sydney", category: "Pub", description: "The scene to be seen", image: "http://www.barsandnightclubs.com.au/assets/images/content/club/sydney//Helm%20Bar%20-%20Darling%20Harbour/Helm%20Bar%20-%20Darling%20Harbour%20-%20Sydney%20-%20Photo01.jpg", latitude: "33.8705", longitude: "151.2026"
v14 = Venue.create name: "The Cidery", location: "389 Pitt St, Sydney", category: "Bar", description: "The scene to be seen", image: "http://theciderybar.sydney/wp-content/uploads/2015/07/12240406_10154224272011111_2537025979888006269_o-585x390.jpg", latitude: "33.8769", longitude: "151.2070"
v15 = Venue.create name: "Frankies Pizza", location: "50 Hunter St, Sydney", category: "Pub", description: "The heart of the business district is not where youd expect to find an underground heavy metal pizza party, but Frankies Pizza by the Slice doesnt much go in for the expected. The front room feels like a pizza parlour from a movie set, but it’s more Ninja Turtles than Sopranos. There are postcards and old photos tacked to the walls; red and white tablecloths and candles in bottles; and they sure can bake the heck out of a pepperoni pizza. Theyll also sell you a slice of whatever is hot for $6 – a night here is one you should prime for. Through the looking glass, or rather through the saloon doors, is Frankie’s dark side – no trace of the good Italian boy making red sauce just like nonna used to.", image: "https://www.broadsheet.com.au/media/cache/4c/8e/4c8e3aa44d19f14d80c6ecb1fdeef95f.jpg", latitude: "33.8659", longitude: "151.2095"





Happyhour.destroy_all
h1 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Monday"
h2 = Happyhour.create start: Time.new(2017,6,20,17,10,0), end: Time.new(2017,6,20,18,10,0), day: "Tuesday"
h3 = Happyhour.create start: Time.new(2017,6,21,17,10,0), end: Time.new(2017,06,21,18,10,0), day: "Wednesday"
h4 = Happyhour.create start: Time.new(2017,6,21,17,10,0), end: Time.new(2017,06,21,18,10,0), day: "Thursday"
h5 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Friday"
h6 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Wednesday"
h7 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Thursday"
h8 = Happyhour.create start: Time.new(2017,6,19,5,10,0), end: Time.new(2017,6,19,7,10,0), day: "Friday"


Deal.destroy_all
d1 = Deal.create drink: "Beer", price: "3.50", description: "Becks, Carlton"
d2 = Deal.create drink: "Wine", price: "5.50", description: "Red, White"
d3 = Deal.create drink: "Spirits", price: "4.00", description: "Vodka, gin, brandy"


u1.venues << v1 << v2 << v5 << v6 << v10 << v11 << v12 << v13 << v14 << v15
u2.venues << v3 << v7 << v8
u3.venues << v4 << v9



v1.happyhours << h1
v2.happyhours << h2
v3.happyhours << h5
v4.happyhours << h6
v5.happyhours << h7
v6.happyhours << h8
v7.happyhours << h4
v8.happyhours << h4
v15.happyhours << h1 << h2 << h3 << h4 << h5



h1.deals << d1
h2.deals << d2
h3.deals << d1
h4.deals << d3
h5.deals << d1
h6.deals << d1
h7.deals << d1
h8.deals << d1
