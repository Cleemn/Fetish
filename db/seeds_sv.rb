# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user.delete_all
User.destroy_all

Juliette = User.create!(email:"juliette@moi.me", user_name:"juliette", password:"juliette")
Romeo = User.create!(email:"romeo@moi.me", user_name:"romeo", password:"romeo!")
Emmanuel = User.create!(email:"emmanuel@moi.me", user_name:"emmanuel", password:"emmanuel")
Brigitte = User.create!(email:"brigitte@moi.me", user_name:"brigitte", password:"brigitte")

puts "Juliette.liked_by(Romeo)"
Juliette.liked_by(Romeo)
puts "Juliette.liked_by(Emmanuel)"
Juliette.liked_by(Emmanuel)

puts "Juliette.disliked_by(Brigitte)"
Juliette.disliked_by(Brigitte)

puts "Romeo.liked_by(Juliette)"
Romeo.liked_by(Juliette)

# Juliette.get_likes
puts "Juliette.get_likes"
puts Juliette.get_likes

# Juliette.get_likes
puts "Juliette.get_dislikes"
puts Juliette.get_dislikes


# Juliette.like? Romeo
puts "Juliette.liked? Romeo"
puts Juliette.liked? Romeo



# Pour chaque like
# si l'util. a liké
# si le likeur a été liké aussi
# création du match



