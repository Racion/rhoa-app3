# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate aditional users
50.times do |n|
  email = "example-#{n+1}@example.com"
  password = 'password'
  User.create!(email: email, password: password, password_confirmation: password)
  122.times do |j|
    if rand(1..2) == 1
      activity_type = 'Burned'
    else
      activity_type = 'Gained'
    end
    description = "Description #{j}..."
    date = Date.current - j.day
    quantity = rand(1..1000)
    CaloriesRegister.create!(description: description, activityType: activity_type, date: date, user_id: User.last.id, quantity: quantity )
  end
end

