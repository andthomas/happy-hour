# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create name: "Paul Vincent", dob: "1988-02-22", email: "paul@vincent.com", password_digest: "chicken"
u2 = User.create name: "Sam Station", dob: "1958-02-12", email: "sam@station.com", password_digest: "chicken"
u3 = User.create name: "Stevie Knicks", dob: "1938-09-22", email: "stevie@knicks.com", password_digest: "chicken"

Venue.destroy_all
v1 = Venue.create name: "The Weeds", location: "300 Oxford St, Paddington", category: "Pub", description: "Warm pud in the heart of Paddington", image: "https://media-cdn.tripadvisor.com/media/photo-s/04/a1/7c/8d/e-w-beck-s-pub.jpg"
v2 = Venue.create name: "Horse and Cart", location: "12 Biggins St, Sydney", category: "Pub", description: "Lovely place for a pint", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmN5NbYXm_yAJRsoO-rSUjZisHDig7lFHBZO01n8FKiSmwcfYS"
v3 = Venue.create name: "Special Bar", location: "66 Clemins St, Ryde", category: "Pub", description: "Nice beers", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgiBqNkq4R7prZfwvbjMXSpQWB3_3alLMlEcS1nVUgviOFE9moiw"
v4 = Venue.create name: "Hand Bar", location: "3 Old St, Glebe", category: "Bar", description: "The scene to be seen", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY88hs478SRtW-20hxJd9yArNcgRxeho9YaFYG4O0Fug5UPmvU"

u1.venues << v1 << v2
u2.venues << v3
u3.venues << v4
