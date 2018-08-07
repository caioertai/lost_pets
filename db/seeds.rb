puts 'Destroying all pets...'
Pet.destroy_all

puts 'Creating pets...'
10.times do
  Pet.create!(
    name: Faker::Pokemon.name,
    address: Faker::Pokemon.location,
    found_on: (Date.today - rand(10)),
    species: %w[cat dog parrot dinossaur].sample
  )
end
