1.times do |user|
  user = User.create(
    first_name: Faker::FunnyName.name,
    last_name: Faker::Games::Pokemon.name,
    email: "quyle1703@gmail.com",
    password: "password",
    avatar: File.new(File.join(Rails.root, "/app/assets/images/user1.jpg")),
    phone: Faker::PhoneNumber.phone_number,
    profession: Faker::Job.title,
    address: Faker::Address.street_address,
    postal_code: Faker::Code.npi,
    country: Faker::Address.state,
    city: Faker::Address.city,
    admin: true
  )
end

1.times do |user|
  user = User.create(
    first_name: Faker::FunnyName.name,
    last_name: Faker::Games::Pokemon.name,
    email: "travisle444@gmail.com",
    password: "password",
    avatar: File.new(File.join(Rails.root, "/app/assets/images/user2.jpg")),
    phone: Faker::PhoneNumber.phone_number,
    profession: Faker::Job.title,
    address: Faker::Address.street_address,
    postal_code: Faker::Code.npi,
    country: Faker::Address.state,
    city: Faker::Address.city
  )
end

1.times do |user|
  user = User.create(
    first_name: Faker::FunnyName.name,
    last_name: Faker::Games::Pokemon.name,
    email: "yoonsung0220@gmail.com",
    password: "password",
    avatar: File.new(File.join(Rails.root, "/app/assets/images/user2.jpg")),
    phone: Faker::PhoneNumber.phone_number,
    profession: Faker::Job.title,
    address: Faker::Address.street_address,
    postal_code: Faker::Code.npi,
    country: Faker::Address.state,
    city: Faker::Address.city
  )
end

3.times do |user|
  user = User.create(
    first_name: Faker::FunnyName.name,
    last_name: Faker::Games::Pokemon.name,
    email: Faker::Internet.email,
    password: "password",
    avatar: File.new(File.join(Rails.root, "/app/assets/images/user2.jpg")),
    phone: Faker::PhoneNumber.phone_number,
    profession: Faker::Job.title,
    address: Faker::Address.street_address,
    postal_code: Faker::Code.npi,
    country: Faker::Address.state,
    city: Faker::Address.city
  )
end