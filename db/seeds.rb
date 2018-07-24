10.times do
    Item.create!(
        name: Faker::Lorem.sentence,
    )
end

User.create!(
    email: 'Stutay.Monga.9@outlook.com',
    password: 'helloworld'
)

puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
