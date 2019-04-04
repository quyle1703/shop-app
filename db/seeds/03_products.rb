3.times do |product|
  product = Product.create(
    name: Faker::Movies::HarryPotter.character,
    price: 500,
    image: File.new(File.join(Rails.root, "/app/assets/images/product1.jpg")),
    description: Faker::TvShows::HowIMetYourMother.quote,
    user_id: 1,
    category_id: 1
  )
end

3.times do |product|
  product = Product.create(
    name: Faker::TvShows::TheITCrowd.character,
    price: 500,
    image: File.new(File.join(Rails.root, "/app/assets/images/product2.jpg")),
    description: Faker::TvShows::HowIMetYourMother.quote,
    user_id: 2,
    category_id: 1
  )
end

3.times do |product|
  product = Product.create(
    name: Faker::TvShows::TheITCrowd.character,
    price: 500,
    image: File.new(File.join(Rails.root, "/app/assets/images/product3.jpg")),
    description: Faker::TvShows::HowIMetYourMother.quote,
    user_id: 3,
    category_id: 1
  )
end