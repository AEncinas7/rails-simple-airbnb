puts "Generating 4 flats..."

4.times do 
  flat = Flat.new(
    name: Faker::Games::Pokemon.name,
    address: Faker::Games::Pokemon.location,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(100..200),
    number_of_guests: rand(1..3)
  )
  flat.save!
end

puts "Finished!"
