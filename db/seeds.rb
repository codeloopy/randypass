# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |usr|
  User.create(email: "user#{usr}@example.com", password: 'password', password_confirmation: 'password')
end



20.times do |item|
  Item.create(
    item_name: "item name #{item}",
    website: "some site #{item}",
    website_username: 'some username',
    website_watchword: "p@$$w0rd#{item}",
    item_notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    user_id: rand(1..3)
  )
end