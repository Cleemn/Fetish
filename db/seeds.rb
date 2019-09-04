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
Message.destroy_all
Match.destroy_all

#USERS
puts 'Creating 12 fake users...'

User.create!(user_name: Faker::Artist.unique.name, description: "On dira à tes parents qu'on s'est rencontrées dans le TGV.", email: "clementine@laposte.net", password: "coucou", avatar: "bitmoji4.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Bonjour toi, je suis une poète et j'aime beaucoup de choses que j'aimerais te faire découvrir si jamais nous matchons..", email: "mc@caramail.com", password: "coucou", avatar: "bitmoji9.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Recherche une femme qui aime le théâtre, la Grèce Antique et le bondage.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji1.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "J'espère que t'aimes les mauvaises filles, parce que je suis mauvaise dans tout.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji10.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "J'ai beaucoup de fétiches, ils ne rentraient pas tous dans la liste. Accepte-moi si tu veux les découvrir...", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji11.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Je n'ai jamais osé les sites de rencontres, j'espère que tu me donneras envie d'y rester", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji12.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Agressive, sauvage, je suis néanmoins capable de douceur. Je déposerai des baisers sur les marques que je te laisserai.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji13.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "J'aime beaucoup jouer au chat, veux-tu être mon gros minet?", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji14.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Rien à dire, tout à prouver.", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji15.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Un peu aventurière, je deviendrai ton Indiana Jones ce soir...", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji16.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Je suis romantique et un peu kinky. Je suis ouverte à tout, même aux histoires d'amour!", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji17.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
User.create!(user_name: Faker::Artist.unique.name, description: "Je n'ai jamais aimé les grands discours, mais je suis très douée en travaux pratiques. Alors dis-moi oui!", email: Faker::Internet.email, password: "coucou", avatar: "bitmoji2.jpg", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")


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


# UserFetish.create(user_id: 99, fetish_id: 55)
# UserFetish.create(user_id: 99, fetish_id: 56)
# UserFetish.create(user_id: 99, fetish_id: 57)
# UserFetish.create(user_id: 99, fetish_id: 58)
# UserFetish.create(user_id: 99, fetish_id: 59)
# UserFetish.create(user_id: 99, fetish_id: 60)
# UserFetish.create(user_id: 88, fetish_id: 61)
# UserFetish.create(user_id: 88, fetish_id: 56)
# UserFetish.create(user_id: 89, fetish_id: 56)
# UserFetish.create(user_id: 89, fetish_id: 57)
# UserFetish.create(user_id: 89, fetish_id: 60)


# UserFetish.create(user_id: 88, fetish_id: 61)
# UserFetish.create(user_id: 88, fetish_id: 56)

# UserFetish.create(user_id: 89, fetish_id: 56)
# UserFetish.create(user_id: 89, fetish_id: 57)
# UserFetish.create(user_id: 89, fetish_id: 60)

# UserFetish.create(user_id: 90, fetish_id: 61)
# UserFetish.create(user_id: 90, fetish_id: 62)
# UserFetish.create(user_id: 90, fetish_id: 58)
# UserFetish.create(user_id: 90, fetish_id: 59)
# UserFetish.create(user_id: 90, fetish_id: 63)
# UserFetish.create(user_id: 90, fetish_id: 64)

# UserFetish.create(user_id: 91, fetish_id: 58)
# UserFetish.create(user_id: 92, fetish_id: 61)
# UserFetish.create(user_id: 92, fetish_id: 65)
# UserFetish.create(user_id: 92, fetish_id: 56)

# UserFetish.create(user_id: 93, fetish_id: 66)
# UserFetish.create(user_id: 93, fetish_id: 62)
# UserFetish.create(user_id: 93, fetish_id: 57)
# UserFetish.create(user_id: 93, fetish_id: 67)
# UserFetish.create(user_id: 93, fetish_id: 58)
# UserFetish.create(user_id: 93, fetish_id: 59)

# UserFetish.create(user_id: 94, fetish_id: 68)
# UserFetish.create(user_id: 94, fetish_id: 69)
# UserFetish.create(user_id: 94, fetish_id: 60)
# UserFetish.create(user_id: 94, fetish_id: 63)
# UserFetish.create(user_id: 94, fetish_id: 70)
# UserFetish.create(user_id: 94, fetish_id: 71)
# UserFetish.create(user_id: 94, fetish_id: 72)

# UserFetish.create(user_id: 95, fetish_id: 72)
# UserFetish.create(user_id: 95, fetish_id: 68)
# UserFetish.create(user_id: 96, fetish_id: 72)
# UserFetish.create(user_id: 96, fetish_id: 56)
# UserFetish.create(user_id: 96, fetish_id: 70)
# UserFetish.create(user_id: 97, fetish_id: 60)
# UserFetish.create(user_id: 98, fetish_id: 60)
# UserFetish.create(user_id: 98, fetish_id: 64)

# USER_FETISH
puts "Creation des fétiches"
ids = Fetish.all.ids
User.all.each do |user|
  user_fetish = UserFetish.create(
    user_id: user.id,
    fetish_id: ids.sample,
  )
  user_fetish.save!
end

#USER_CRITERIA

puts "Creation des critères"
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
puts "Creation des matchs"
Match.create!(user_1_id: 1, user_2_id: 2)
Match.create!(user_1_id: 1, user_2_id: 3)
Match.create!(user_1_id: 1, user_2_id: 4)
Match.create!(user_1_id: 2, user_2_id: 3)
Match.create!(user_1_id: 2, user_2_id: 4)
Match.create!(user_1_id: 3, user_2_id: 5)
Match.create!(user_1_id: 3, user_2_id: 6)
Match.create!(user_1_id: 3, user_2_id: 7)
Match.create!(user_1_id: 3, user_2_id: 8)
Match.create!(user_1_id: 3, user_2_id: 4)
Match.create!(user_1_id: 4, user_2_id: 5)
Match.create!(user_1_id: 5, user_2_id: 6)
Match.create!(user_1_id: 5, user_2_id: 11)
Match.create!(user_1_id: 6, user_2_id: 7)
Match.create!(user_1_id: 7, user_2_id: 8)
Match.create!(user_1_id: 7, user_2_id: 12)
Match.create!(user_1_id: 8, user_2_id: 9)
Match.create!(user_1_id: 9, user_2_id: 10)
Match.create!(user_1_id: 10, user_2_id: 11)
Match.create!(user_1_id: 11, user_2_id: 12)
Match.create!(user_1_id: 11, user_2_id: 10)


puts 'Finished!'
