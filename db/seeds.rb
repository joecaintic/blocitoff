# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

#Create Users

5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )

  user.skip_confirmation!
  user.save!
end
users = User.all

#Create Items

50.times do
  item = Item.create!(
    user:  users.sample,
    name:  Faker::Lorem.sentence
  )

  item.update_attributes!(created_at: rand(10.minutes .. 1.year).ago)
end
items = Item.all



user = User.new(
  name:       'Joseph Caintic',
  email:      'joecaintic@yahoo.com',
  password:   'helloworld'
  )
  user.skip_confirmation!
  user.save!

user = User.first
user.skip_reconfirmation!
user.update_attributes!(
  email: 'user@example.com',
  password: 'helloworld'
  )


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"