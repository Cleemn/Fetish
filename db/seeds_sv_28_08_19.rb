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
puts 'Creating 5 fake users...'

5.times do
  users = User.new(
    user_name: Faker::Artist.unique.name,
    email: Faker::Internet.email,
    password: "coucou",
    description:Faker::Hipster.sentence,
    avatar: Faker::Avatar.image,
  )
  users.save!
end

pieds = Fetish.create(name: "Pieds", description:"Pieds", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
mains = Fetish.create(name: "Mains", description:"Mains", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
uniformes = Fetish.create(name: "Uniformes", description:"Uniformes", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
bbw = Fetish.create(name: "BBW", description:"Big Beautifull Women", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")
cuir = Fetish.create(name: "Cuir", description:"Cuir Moustache", image:"https://www.podoorthese.fr/wp-content/uploads/sites/1251/2016/08/logo-podo-orth%C3%A8se-du-centre.png")



UserFetish.new(fetish_id: 1, user_id:1)
UserFetish.new(fetish_id: 2, user_id:1)
UserFetish.new(fetish_id: 3, user_id:1)
UserFetish.new(fetish_id: 1, user_id:2)
UserFetish.new(fetish_id: 4, user_id:2)
UserFetish.new(fetish_id: 1, user_id:3)
UserFetish.new(fetish_id: 3, user_id:3)

User1 = User.first
User2 = User.find(User1.id + 1)
User3 = User.find(User1.id + 2)
User4 = User.find(User1.id + 3)
User5 = User.find(User1.id + 4)

# Likes-dislikes de User 1

User2.liked_by(User1)
User3.liked_by(User1)
User4.disliked_by(User1)

# Likes-dislikes de User 2
User1.disliked_by(User2)

User3.disliked_by(User2)
User4.disliked_by(User2)

# Likes-dislikes de User 3
User1.liked_by(User3)
  Match31 = Match.new
  Match31.user_1 = User3
  Match31.user_2 = User1
  Match31.save
User2.disliked_by(User3)

User4.liked_by(User3)

# >> 1 match entre 3 et 1

# Liste des likes/dislikes par User
# Pour User1 : 5
# Pour User2 : 5
# Pour User3 : 5

# Pour 4 - Lst = 3 et 5 .

# Pour 5 - Lst = 1, 2, 3, 4 / match si 1, 2 ou 3.


User1.save
User2.save
User3.save
User4.save
User5.save

puts '6 likes, 6 dislikes !'
puts 'un match 31 !'


puts 'Finished!'
