# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#create 10 users in the table user
10.times do
  user = User.create!(first_name: Faker::Hobbit.character, last_name: Faker::Company.name, email: Faker::Internet.email)
end

#create 5 categories in the table category
5.times do
  category = Category.create!(name: Faker::Simpsons.character, description: Faker::Simpsons.location)
end

#create 10 articles in the table article
10.times do
  article = Article.create!(title: Faker::RickAndMorty.character, content: Faker::RickAndMorty.quote, user_id: rand(1..10), category_id: rand(1..5))
end

#create 15 comments in the table comment
15.times do
  comment = Comment.create!(content: Faker::Hipster.sentences, user_id: rand(1..10), article_id: rand(1..10))
end

#create 15 likes in the table like
15.times do
  like = Like.create!(user_id: rand(1..10), article_id: rand(1..10))
end
