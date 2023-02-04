require 'faker'
require "open-uri"
Venue.destroy_all

url_array = ["https://ik.imagekit.io/bmvchyq37u/photos/7039/photoalfredmeetingkampairezdechausseevueglobale5c474e2e197ce.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/703/photoalfredmeetingalcazarsalleprincipale5c47403a9ab12.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/10342/photoalfredmeetingleshacklesalonsoireecocktaildinatoiresoireedinerassis608bc42b0704e.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/11462/photoalfredmeetingkeezelavilladeschampslepavillonsalleprivatisable6179676421815.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/9610/photoalfredmeetinghtelmademoisellesalleprivatisable5cb088bf8679d.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/7093/photoalfredmeetinghtelhorrestaurant5c82a0daa5c9e.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/891/salon-opera-2_629744fca02d3.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/824/photoalfredmeetingtimhotelopramadeleinesallederunion5c7d06a765f95.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/965/photoalfredmeetinglessalonsdelaveyronlevezouaubracsalleprivatisableseminairejourneedetude61b096426bb28.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/9683/photoalfredmeetingpopartloftsalleprivatisable5cf4d7d8dddfa.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/7055/coupole-sans-bleu-yann-deret_636bac59d50a1.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/862/photoalfredmeetingespacevocationhaussmannsaintlazaresalleprivatisableseminairejourneedetudegrandsmagasins5db80206abda3.jpeg",
             "https://ik.imagekit.io/bmvchyq37u/photos/913/photoalfredmeetingpurgatoire54paradislagalerie5ca767bd9177b.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/7075/photoalfredmeetinglecosychiclecosychicsalleprivatisableseminairejourneedetudeteambuildinganimation609aea28c792b.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/6563/villamaillotverriereenu0.jpg",
             "https://ik.imagekit.io/bmvchyq37u/photos/859/photoalfredmeetingbusinesscenteredouardviilascenesalleprivatisableauditoriumseminairejourneedetude5e09ffda14920.jpg"]
30.times do
  Venue.create(
    user_id: rand(1..3),
    name: Faker::Company.name,
    rating: rand(1..5),
    address: Faker::Address.full_address,
    capacity: Faker::Number.within(range: 50..200),
    description: Faker::Lorem.paragraphs,
    price: Faker::Number.within(range: 550..2500),
    contact_number: Faker::PhoneNumber.phone_number,
    photo: url_array.sample
  )
end
