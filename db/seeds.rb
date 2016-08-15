# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HOW_MANY = 1000

def random_department
  array = %w(Sales Marketing Technical)
  array[rand(3)]
end

# p random_department()

HOW_MANY.times do
  Support.create(name: Faker::Name.name, email: Faker::Internet.email, department: random_department, message: Faker::Lorem.paragraph)
end
