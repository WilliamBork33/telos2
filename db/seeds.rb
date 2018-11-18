# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  name:                  "faker",
  email:                 "faker@faker.com",
  address:               "123 Faker St.",
  phone:                 "1234567890",
  password:              "fakerr",
  password_confirmation: "fakerr",
  )

User.create!(
  name:                  "admin",
  email:                 "admin@admin.com",
  address:               "123 Admin St.",
  phone:                 "1234567890",
  password:              "adminn",
  password_confirmation: "adminn",
  admin: true
  )

  
    
33.times do |n|
name  = Faker::Name.name
email = Faker::Internet.email
address = Faker::Address.street_address
phone = rand.to_s[2..11]
password = "example"

  User.create!(
      name:                  name,
      email:                 email,
      address:               address,
      password:              password,
      password_confirmation: password)
end



users = User.order(:created_at).take(6)
5.times do |n|
title       = Faker::Book.title
description = Faker::Lorem.sentence(5)
author      = Faker::Book.author
seller      = @user.user_id
price       = Faker::Number.decimal(2)
user_id     = @user.user_id

  users.each { |user| user.books.create!(
    title:               title,
    description:         description,
    author:              author,
    seller:              seller,
    price:               price,
    user_id:             user_id)}
end