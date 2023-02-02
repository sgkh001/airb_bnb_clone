# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"

Venue.destroy_all
50.times do |i| "nes.png" + 1
  file = URI.open["https://www.alfredmeeting.com/location-lieu/salons-de-laero-club-de-france-paris","https://www.alfredmeeting.com/location-lieu/pan-piper-paris","https://www.alfredmeeting.com/location-lieu/keeze-champs-elysees-la-voliere-paris","https://www.alfredmeeting.com/location-lieu/1k-hotel-paris","https://www.alfredmeeting.com/location-lieu/hotel-les-provinces-opera-paris","https://www.alfredmeeting.com/location-lieu/keeze-opera-lafayette-paris","https://www.alfredmeeting.com/location-lieu/comet-meetings-ternes-paris","https://www.alfredmeeting.com/location-lieu/hotel-inn-design-paris-place-ditalie-paris","https://www.alfredmeeting.com/location-lieu/the-westin-paris-vendome-paris","https://www.alfredmeeting.com/location-lieu/holiday-inn-paris-saint-germain-des-pres-paris","https://www.alfredmeeting.com/location-lieu/verso-centre-de-conferences-paris","https://www.alfredmeeting.com/location-lieu/keeze-champs-elysees-la-galerie-paris","https://www.alfredmeeting.com/location-lieu/afterplace-station-f-paris","https://www.alfredmeeting.com/location-lieu/arty-loft-paris"].sample
  venue.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end
  Venue.new(
    user_id: rand(1..3),
    name: Faker::Company.name,
    rating: rand(1..5),
    address: Faker::Address.full_address,
    capacity: Faker::Number.within(range: 50..200),
    description: Faker::Lorem.paragraphs,
    price: Faker::Number.within(range: 550..2500),
    contact_number: Faker::PhoneNumber.phone_number)
  end
