# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chez_karim = { name: "Chez Karim", address: "7 Boundary St, London E2 7JE", phone_number: "0658987485", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0668787485", category: "italian" }
chez_orane = { name: "Chez Orane", address: "11 rue Blaise,Japon", phone_number: "0636987485", category: "japanese" }
orval = { name: "l'orval", address: "189 rue Paul, Belgique", phone_number: "0987457485", category: "belgian" }
dynastie = { name: "Dynastie", address: "1 rue marvie, France", phone_number: "0125478485", category: "chinese" }

[chez_karim, pizza_east, chez_orane, dynastie, orval].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
