# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Venue.destroy_all
50.times do
  Venue.create(
    user_id: rand(1..3),
    name: Faker::Company.name,
    rating: rand(0..5),
    address: Faker::Address.full_address,
    capacity: Faker::Number.within(range: 50..200),
    description: Faker::Lorem.paragraphs,
    price: Faker::Number.within(range: 550..2500),
    contact_number: Faker::PhoneNumber.phone_number
  )
end
