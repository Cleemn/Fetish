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
pieds = Fetish.create(name: "Pieds", description:"Pieds", image:"https://img.icons8.com/doodle/64/000000/right-footprint--v2.png")
mains = Fetish.create(name: "Mains", description:"Mains", image:"https://img.icons8.com/color/64/000000/hand-cursor.png")
uniformes = Fetish.create(name: "Uniformes", description:"Uniformes", image:"https://img.icons8.com/dotty/64/000000/coach.png")
bbw = Fetish.create(name: "BBW", description:"Big Beautiful Women", image:"https://img.icons8.com/officel/64/000000/guest-female.png")
cuir = Fetish.create(name: "Cuir", description:"Cuir Moustache", image:"https://img.icons8.com/ios/64/000000/leather.png")
aquaphilie = Fetish.create(name: "Aquaphilie", description:"Aquaphilie", image:"https://img.icons8.com/doodle/64/000000/water-element.png")
bandana = Fetish.create(name: "Bandana", description:"Bandana", image:"https://previews.123rf.com/images/pandavector/pandavector1702/pandavector170200172/70952060-ic%C3%B4ne-de-bandana-cowboy-en-style-cartoon-isol%C3%A9-sur-fond-blanc-illustration-de-rod%C3%A9o-symbole-vecteur-stock-.jpg")
bottes = Fetish.create(name: "Bottes", description:"Bottes", image:"https://img.icons8.com/ios-filled/64/000000/fireman-boots.png")
chaussures = Fetish.create(name: "Chaussures", description:"Chaussures", image:"https://img.icons8.com/ios-filled/64/000000/mens-shoe.png")
poupee = Fetish.create(name: "Poupée", description:"Poupée", image:"https://previews.123rf.com/images/yitewang/yitewang1512/yitewang151201018/49530120-jouet-poup%C3%A9e-ic%C3%B4ne-plat.jpg")
ballons = Fetish.create(name: "Ballons", description:"Ballons", image:"https://img.icons8.com/color/64/000000/party-baloon.png")
lunettes = Fetish.create(name: "Lunettes", description:"Lunettes", image:"https://img.icons8.com/ios-filled/64/000000/vintage-glasses.png")
seins = Fetish.create(name: "Seins", description:"Seins", image:"https://img.icons8.com/cotton/64/000000/sexy-woman.png")
sous_vetements = Fetish.create(name: "Sous-vêtements", description:"Sous-vêtements", image:"https://img.icons8.com/ios-glyphs/64/000000/underwear.png")
knismolagnie = Fetish.create(name: "Knismolagnie", description:"Knismolagnie", image:"https://img.icons8.com/windows/64/000000/quill-pen.png")
nasophilie = Fetish.create(name: "Nasophilie", description:"Nasophilie", image:"https://previews.123rf.com/images/rrraven/rrraven1411/rrraven141100207/33822969-nez-ic%C3%B4ne.jpg")
sthenolagnie = Fetish.create(name: "Sthénolagnie", description:"Sthénolagnie", image:"https://img.icons8.com/color/64/000000/flex-biceps.png")
zentai = Fetish.create(name: "Zentai", description:"Zentai", image:"https://superx.studio/499-large_default/Vert-costume-lycra-zentai.jpg")

#USER_FETISH

40.times do
  user_fetish = UserFetish.create(
    user_id: rand(1..40),
    fetish_id: rand(1..18),
  )
  user_fetish.save!
end

#USER_CRITERIA

20.times do
  criterium = Criterium.create(
    user_id: rand(1..20),
    gender: "femme",
    age: rand(18..60),
    localisation: "Paris",
    )
  criterium.save!
end

20.times do
  criterium = Criterium.create(
    user_id: rand(21..40),
    gender: "homme",
    age: rand(18..60),
    localisation: "Paris",
    )
  criterium.save!
end



puts 'Finished!'
