# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create 5 restaurants
restaurants = [
  { name: 'LittleMamma', address: '123 hello st', category: 'italian', phone_number: '19793002' },
  { name: 'BigMamma', address: '45 hay hassani', category: 'chinese', phone_number: '0973209720' },
  { name: 'MediumMama', address: '78 sidi maarof', category: 'japanese', phone_number: '0830031973' },
  { name: 'TinyMamma', address: '12 bd cali', category: 'french', phone_number: "8297310813" },
  { name: 'HugeMamma', address: '20 bd sale', category: 'belgian', phone_number: '831083108' }
]

restaurants.each do |restaurant_data|
  restaurant = Restaurant.create!(restaurant_data)

  Review.create!(content: "Great food at #{restaurant.name}", rating: rand(1..5), restaurant: restaurant)
end
