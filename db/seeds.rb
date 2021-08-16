# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
#puts "Cleaning database..."
#Restaurant.destroy_all

#puts "Creating restaurants..."
#dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
#pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

#[ dishoom, pizza_east ].each do |attributes|
#  restaurant = Restaurant.create!(attributes)
#  puts "Created #{restaurant.name}"
##end
#puts "Finished!"


catego = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Eliminando toda la base de datos:"
Restaurant.destroy_all
Review.destroy_all

10.times do
  bristol = Restaurant.new(name: Faker::Restaurant.name , category: catego.sample, phone_number: Faker::PhoneNumber.extension, address: Faker::Address.city)
  bristol.save                # Insert into DB and set id
  yummy = Review.new(content: Faker::Quote.yoda, rating: rand(0..5))
  yummy.restaurant = bristol  # Set foreign key restaurant_id
  yummy.save
  bristol.reviews             # Should contain the yummy review
  yummy.restaurant
end
