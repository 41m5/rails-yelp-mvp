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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Bella Italia", address: "7 Boundary St, London E2 7JE", phone_number: "01", category: "italian")
puts "Created 1"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "012", category: "italian")
puts "Created 2"
Restaurant.create!(name: "Wagamama", address: "10 Boundary St, London E2 7JE", phone_number: "0123", category: "japanese")
puts "Created 3"
Restaurant.create!(name: "Polpo", address: "5 Shoreditch High St, London E1 6PQ", phone_number: "0124", category: "italian")
puts "Created 4"
Restaurant.create!(name: "Noko", address: "10 Shoreditch High St, London E1 6PQ", phone_number: "012", category: "japanese")
puts "Created 5"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
