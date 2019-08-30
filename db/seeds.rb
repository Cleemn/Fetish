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
UserFetish.destroy_all
Criterium.destroy_all


#USERS
puts 'Creating 12 fake users...'

User.create(user_name: Faker::Artist.unique.name, description: "On dira à tes parents qu'on s'est rencontrées dans le TGV.", email: "clementine@laposte.net", password: "coucou", avatar: "bitmoji4.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: "mc@caramail.com", password: "coucou", avatar: "bitmoji9.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: "Recherche une femme qui aime le théâtre, la Grèce Antique et le bondage.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji1.jpeg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: "J'espère que t'aimes les mauvaises filles, parce que je suis mauvaise dans tout.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji10.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji11.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji12.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji13.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji14.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji15.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji16.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji17.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create(user_name: Faker::Artist.unique.name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, password: "coucou", avatar: "bitmoji2.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")


# 20.times do
#   users = User.new(
#     user_name: Faker::Artist.unique.name,
#     email: Faker::Internet.email,
#     password: "coucou",
#     description:Faker::Hipster.sentence,
#     avatar: Faker::Avatar.image,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 60),
#     gender: "Femme",
#     localisation: "Paris",
#   )
#   users.save!
# end

# 20.times do
#   users = User.new(
#     user_name: Faker::Artist.unique.name,
#     email: Faker::Internet.email,
#     password: "coucou",
#     description:Faker::Hipster.sentence,
#     avatar: Faker::Avatar.image,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 60),
#     gender: "Homme",
#     localisation: "Paris",
#   )
#   users.save!
# end

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


UserFetish.create(user_id: 1, fetish_id: 19)
UserFetish.create(user_id: 1, fetish_id: 21)
UserFetish.create(user_id: 1, fetish_id: 24)
UserFetish.create(user_id: 1, fetish_id: 26)
UserFetish.create(user_id: 1, fetish_id: 27)
UserFetish.create(user_id: 1, fetish_id: 30)

UserFetish.create(user_id: 2, fetish_id: 19)
UserFetish.create(user_id: 2, fetish_id: 21)

UserFetish.create(user_id: 3, fetish_id: 21)
UserFetish.create(user_id: 3, fetish_id: 24)
UserFetish.create(user_id: 3, fetish_id: 30)

UserFetish.create(user_id: 4, fetish_id: 19)
UserFetish.create(user_id: 4, fetish_id: 23)
UserFetish.create(user_id: 4, fetish_id: 26)
UserFetish.create(user_id: 4, fetish_id: 27)
UserFetish.create(user_id: 4, fetish_id: 31)
UserFetish.create(user_id: 4, fetish_id: 36)

UserFetish.create(user_id: 5, fetish_id: 26)

UserFetish.create(user_id: 6, fetish_id: 19)
UserFetish.create(user_id: 6, fetish_id: 20)
UserFetish.create(user_id: 6, fetish_id: 21)

UserFetish.create(user_id: 7, fetish_id: 22)
UserFetish.create(user_id: 7, fetish_id: 23)
UserFetish.create(user_id: 7, fetish_id: 24)
UserFetish.create(user_id: 7, fetish_id: 25)
UserFetish.create(user_id: 7, fetish_id: 26)
UserFetish.create(user_id: 7, fetish_id: 27)

UserFetish.create(user_id: 8, fetish_id: 28)
UserFetish.create(user_id: 8, fetish_id: 29)
UserFetish.create(user_id: 8, fetish_id: 30)
UserFetish.create(user_id: 8, fetish_id: 31)
UserFetish.create(user_id: 8, fetish_id: 32)
UserFetish.create(user_id: 8, fetish_id: 33)
UserFetish.create(user_id: 8, fetish_id: 34)

UserFetish.create(user_id: 9, fetish_id: 34)
UserFetish.create(user_id: 9, fetish_id: 28)

UserFetish.create(user_id: 10, fetish_id: 34)
UserFetish.create(user_id: 10, fetish_id: 21)
UserFetish.create(user_id: 10, fetish_id: 32)

UserFetish.create(user_id: 11, fetish_id: 30)

UserFetish.create(user_id: 12, fetish_id: 30)
UserFetish.create(user_id: 12, fetish_id: 36)




#USER_FETISH
# ids = Fetish.all.ids
# User.all.each do |user|
#   user_fetish = UserFetish.create(
#     user_id: user.id,
#     fetish_id: ids.sample,
#   )
#   user_fetish.save!
# end

#USER_CRITERIA

User.first(12).each do |user|
  criterium = Criterium.create(
    user_id: user.id,
    gender: "Femme",
    age: 27,
    localisation: "Paris",
    )
  criterium.save!
end

# User.last(20).each do |user|
#   criterium = Criterium.create(
#     user_id: user.id,
#     gender: "Homme",
#     age: rand(18..60),
#     localisation: "Paris",
#     )
#   criterium.save!
# end

puts 'Finished!'
