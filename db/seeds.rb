# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  name = Faker::Name.name
  email = Faker::Internet.unique.free_email
  password = Faker::Internet.password(min_length: 6)

  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end

User.all.each do |user|
  user.posts.create!(
    title: Faker::Lorem.characters(number: 10, min_alpha: 4),
    content: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4)
  )
end