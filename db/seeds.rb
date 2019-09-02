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


#USERS
puts 'Creating 12 fake users...'

# MC une utilisatrice - qui présente l'application - aime pieds et bottes

# Clem - un utilisateur avec qui MC a eu une discussion sympa, aime les pieds.
# Envoi d'une photo.

# DonaldT un lourd - plein de messages - pour la fonction arrêt discussion, des échanges

# Lior -
# Germin -


MC = User.create!(user_name: "MC", description: "Je suis un bon exemple de mauvais exemple.", email: "mc@caramail.com", password: "coucou", avatar: "bitmoji10.png", birth_date: "1991-10-10", gender: "Femme", localisation: "Paris")
# MC a 2 fétiches : Pieds et bottes.

# Clem a le fétiche des Pieds et bottes
Clem = User.create!(user_name: "Clem", description: "On dira à tes parents qu'on s'est rencontrées dans le TGV.", email: "clement@laposte.net", password: "coucou", avatar: "bitmoji4.png", birth_date: "1991-10-10", gender: "Homme", localisation: "Paris")
# Envoi d'une photo.

# Germin = # Clem a le fétiche des pieds a liké Clem
Germin = User.create!(user_name: "Germin", description: "Recherche une femme qui a des jolis pieds.", email: "germin@top-ta.fr", password: "coucou", avatar: "bitmoji2.jpg", birth_date: "1991-10-10", gender: "Homme", localisation: "Paris")
# Nouveau : envoi d'un message Hello.

# Uniformes
# Lior #  a accepter
Lior = User.create!(user_name: "Lior", description: "Indiscipliné - un esprit fin dans un corps qui donne faim", email: "lior@jadore.com", password: "coucou", avatar: "bitmoji13.jpg", birth_date: "1991-10-10", gender: "Homme", localisation: "Paris")

# DonaldT a le fétiche des uniformes - pour le rejet
DonaldT = User.create!(user_name: "DonaldT", description: "Recherche une femme qui aime le théâtre, la Grèce Antique et le bondage.", email: "donalt@whitehouse.fr", password: "coucou", avatar: "bitmoji11.png", birth_date: "1991-10-10", gender: "Homme", localisation: "Paris")


#FETISH
pieds = Fetish.create!(name: "Pieds", description:"Pieds", image:"footprint.png")
mains = Fetish.create!(name: "Mains", description:"Mains", image:"hand.png")
uniformes = Fetish.create!(name: "Uniformes", description:"Uniformes", image:"policeman.png")
bbw = Fetish.create!(name: "BBW", description:"Big Beautiful Women", image:"women.png")
cuir = Fetish.create!(name: "Cuir", description:"Cuir Moustache", image:"leather.png")
aquaphilie = Fetish.create!(name: "Aquaphilie", description:"Aquaphilie", image:"water.png")
bandana = Fetish.create!(name: "Bandana", description:"Bandana", image:"bandana.jpg")
bottes = Fetish.create!(name: "Bottes", description:"Bottes", image:"boots.png")
chaussures = Fetish.create!(name: "Chaussures", description:"Chaussures", image:"shoe.png")
poupee = Fetish.create!(name: "Poupée", description:"Poupée", image:"poupee.jpg")
ballons = Fetish.create!(name: "Ballons", description:"Ballons", image:"baloon.png")
lunettes = Fetish.create!(name: "Lunettes", description:"Lunettes", image:"glasses.png")
seins = Fetish.create!(name: "Seins", description:"Seins", image:"breast.png")
sous_vetements = Fetish.create!(name: "Sous-vêtements", description:"Sous-vêtements", image:"underwear.png")
knismolagnie = Fetish.create!(name: "Knismolagnie", description:"Knismolagnie", image:"feather.png")
nasophilie = Fetish.create!(name: "Nasophilie", description:"Nasophilie", image:"nez.jpg")
sthenolagnie = Fetish.create!(name: "Sthénolagnie", description:"Sthénolagnie", image:"biceps.png")
zentai = Fetish.create!(name: "Zentai", description:"Zentai", image:"zentai.jpg")

# Fetiches de MC, Clem, Germin, Lior, DonaldT
UserFetish.create!(user: MC, fetish: pieds)
UserFetish.create!(user: MC, fetish: bottes)

UserFetish.create!(user: Clem, fetish: pieds)
UserFetish.create!(user: Clem, fetish: bottes)

UserFetish.create!(user: Germin, fetish: pieds)

UserFetish.create!(user: Lior, fetish: uniformes)
UserFetish.create!(user: DonaldT, fetish: uniformes)

# Criteres

Criterium.create!(user: MC, gender: "Homme", age: 27, localisation: "Paris")
Criterium.create!(user: Clem, gender: "Femme", age: 27, localisation: "Paris")
Criterium.create!(user: Germin, gender: "Femme", age: 27, localisation: "Paris")
Criterium.create!(user: Lior, gender: "Femme", age: 27, localisation: "Paris")
Criterium.create!(user: DonaldT, gender: "Femme", age: 27, localisation: "Paris")

Clem.liked_by(MC)
MC.liked_by(Clem)
# 1 match
MCClem = Match.create!(user_1: Clem, user_2: MC)

# des messages
MCCLemMsg1 = Message.create!(match: MCClem, user: Clem, content:"Hello MC, t nouvelle ? ")
MCCLemMsg2 = Message.create!(match: MCClem, user: MC, content:"Hello Clem, oui, pas vraiment ")
MCCLemMsg3 = Message.create!(match: MCClem, user: MC, content:"Une photo pour toi", picture:"MC_bottes.jpg")
MCCLemMsg4 = Message.create!(match: MCClem, user: Clem, content:"Merci. Trop belles. ;-)")
MCCLemMsg5 = Message.create!(match: MCClem, user: Clem, content:"Appelle moi - pressée de te parler")
MCCLemMsg6 = Message.create!(match: MCClem, user: Clem, content:"Mon tel 06 69 69 69 69")

# like de Germin et Match
MC.liked_by(Germin)
# ---- MCGermin = Match.create!(user_1: Germin, user_2: MC)

# Demo  --
# Connexion
# Reprise des échanges avec Clem.
# Un premier message de bienvenue avec Germin

# Un ajout de fetish
# Uniforme
# reprise de la recherche
# 2 personnes
# Lior ok
# DonaldT NO

puts 'Finished!'
