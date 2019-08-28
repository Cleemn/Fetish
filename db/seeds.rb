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
Criteria.destroy_all
puts 'Creating 10 fake users...'

#USERS

3.times do
  users = User.new(
    user_name: Faker::Artist.unique.name,
    email: Faker::Internet.email,
    password: "coucou",
    description:Faker::Hipster.sentence,
    avatar: Faker::Avatar.image,
    birth_date: "28/12/1991",
    gender: "Femme",
    localisation: "Paris",
  )
  users.save!
end

8.times do
  users = User.new(
    user_name: Faker::Artist.unique.name,
    email: Faker::Internet.email,
    password: "coucou",
    description:Faker::Hipster.sentence,
    avatar: Faker::Avatar.image,
    birth_date: "28/12/1991",
    gender: "Homme",
    localisation: "Paris",
  )
  users.save!
end

#FETISH
pieds = Fetish.create(name: "Pieds", description:"Pieds", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
mains = Fetish.create(name: "Mains", description:"Mains", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
uniformes = Fetish.create(name: "Uniformes", description:"Uniformes", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
bbw = Fetish.create(name: "BBW", description:"Big Beautifull Women", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
cuir = Fetish.create(name: "Cuir", description:"Cuir Moustache", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")

#USER_FETISH
UserFetish.create(fetish_id: 1, user_id:1)
UserFetish.create(fetish_id: 2, user_id:1)
UserFetish.create(fetish_id: 3, user_id:1)
UserFetish.create(fetish_id: 1, user_id:2)
UserFetish.create(fetish_id: 4, user_id:2)
UserFetish.create(fetish_id: 1, user_id:3)
UserFetish.create(fetish_id: 3, user_id:3)
UserFetish.create(fetish_id: 1, user_id:4)
UserFetish.create(fetish_id: 1, user_id:5)
UserFetish.create(fetish_id: 2, user_id:6)
UserFetish.create(fetish_id: 1, user_id:7)
UserFetish.create(fetish_id: 2, user_id:8)

#CRITERIA
Criteria.create(user_id: 1, gender: "Homme", age: "27", localisation: "75000")
Criteria.create(user_id: 4, gender: "Femme", age: "27", localisation: "75000")


puts 'Finished!'
