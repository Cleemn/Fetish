# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts 'destruction de la base précédente'
User.destroy_all
Fetish.destroy_all
UserFetish.destroy_all
Criterium.destroy_all
puts 'Creating 40 fake users...'

#USERS

20.times do
  users = User.new(
    user_name: Faker::Artist.unique.name,
    email: Faker::Internet.email,
    password: "coucou",
    description:Faker::Hipster.sentence,
    avatar: Faker::Avatar.image,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 60),
    gender: "Femme",
    localisation: "Paris",
  )
  users.save!
end

20.times do
  users = User.new(
    user_name: Faker::Artist.unique.name,
    email: Faker::Internet.email,
    password: "coucou",
    description:Faker::Hipster.sentence,
    avatar: Faker::Avatar.image,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 60),
    gender: "Homme",
    localisation: "Paris",
  )
  users.save!
end

#FETISH
pieds = Fetish.create(name: "Pieds", description:"Pieds", image:"footprint.png")
mains = Fetish.create(name: "Mains", description:"Mains", image:"hand.png")
uniformes = Fetish.create(name: "Uniformes", description:"Uniformes", image:"policeman.png")
bbw = Fetish.create(name: "BBW", description:"Big Beautiful Women", image:"women.png")
cuir = Fetish.create(name: "Cuir", description:"Cuir Moustache", image:"leather.png")
aquaphilie = Fetish.create(name: "Aquaphilie", description:"Aquaphilie", image:"water.png")
bandana = Fetish.create(name: "Bandana", description:"Bandana", image:"bandana.jpg")
bottes = Fetish.create(name: "Bottes", description:"Bottes", image:"boots.png")
chaussures = Fetish.create(name: "Chaussures", description:"Chaussures", image:"shoe.png")
poupee = Fetish.create(name: "Poupée", description:"Poupée", image:"poupee.jpg")
ballons = Fetish.create(name: "Ballons", description:"Ballons", image:"baloon.png")
lunettes = Fetish.create(name: "Lunettes", description:"Lunettes", image:"glasses.png")
seins = Fetish.create(name: "Seins", description:"Seins", image:"breast.png")
sous_vetements = Fetish.create(name: "Sous-vêtements", description:"Sous-vêtements", image:"underwear.png")
knismolagnie = Fetish.create(name: "Knismolagnie", description:"Knismolagnie", image:"feather.png")
nasophilie = Fetish.create(name: "Nasophilie", description:"Nasophilie", image:"nez.jpg")
sthenolagnie = Fetish.create(name: "Sthénolagnie", description:"Sthénolagnie", image:"biceps.png")
zentai = Fetish.create(name: "Zentai", description:"Zentai", image:"zentai.jpg")

#USER_FETISH
ids = Fetish.all.ids
User.all.each do |user|
  user_fetish = UserFetish.create(
    user_id: user.id,
    fetish_id: ids.sample,
  )
  user_fetish.save!
end

#USER_CRITERIA

User.first(20).each do |user|
  criterium = Criterium.create(
    user_id: user.id,
    gender: "femme",
    age: rand(18..60),
    localisation: "Paris",
    )
  criterium.save!
end

User.last(20).each do |user|
  criterium = Criterium.create(
    user_id: user.id,
    gender: "homme",
    age: rand(18..60),
    localisation: "Paris",
    )
  criterium.save!
end





puts 'Finished!'
