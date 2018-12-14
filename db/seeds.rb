# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
end

250.times do |index|
  Review.create!(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
