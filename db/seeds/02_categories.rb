5.times do |category|
  category = Category.create(
    name: Faker::Esport.game
  )
end