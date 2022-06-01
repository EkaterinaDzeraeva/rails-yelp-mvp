
puts 'Cleaning the DB'

Restaurant.destroy_all

puts 'Starting the seeding process'

restaurants = [
  { name: "La mouche", address: "17 rue de la Liberté, Paris", phone_number: "01 45 74 75 27", category:"french" },
  { name: "Japanese Fusion", address: "34 Rue Beaurepaire, 75010 Paris", phone_number: "01 40 37 39 12", category: "japanese" },
  { name: "Casa Leya", address: "36 Cr Saleya, 06300 Nice", phone_number: " 04 92 47 80 90", category:"belgian" },
  { name: "La Piadineria", address: "15 Bd Général Louis Delfino, 06300 Nice",phone_number: "04 93 31 25 60", category:"italian" },
  { name: "La Locanda", address: "16 Rue Robert Schuman, 06000 Nice",phone_number: "04 93 18 92 31",category:"italian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
