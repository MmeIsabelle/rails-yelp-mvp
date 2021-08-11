puts "Cleaning the database..."
Restaurant.destroy_all

puts "Adding restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: (Restaurant::CATEGORIES).sample
  )
end
puts "5 restaurants were created"