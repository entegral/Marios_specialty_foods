require 'rails_helper'

describe ('Product') do

  describe('.top5') do
    it("returns the top 5 most reviewd products") do

      p1 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p1.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
      p1.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      p2 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p2.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
      p2.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      p3 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p3.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
      p3.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      p4 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p4.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
      p4.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      p5 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p5.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))
      p5.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      p6 = Product.create(name: Faker::Food.dish, cost: Faker::Number.number(1), origin: Faker::Address.country)
      p6.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.characters(150), rating: 1+rand(5), product_id: 1+rand(50))

      query = Product.top5

      expect(query).to include(p1)
      expect(query).to include(p2)
      expect(query).to include(p3)
      expect(query).to include(p4)
      expect(query).to include(p5)
      expect(query).to_not include(p6)

    end
  end
  #
  # describe('.new3') do
  #
  # end

end
