
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean-up the DB

User.destroy_all

jm = User.new(
  email: "admin@admin.com",
  password: "admin123",
  name: "Jean-Michel le Grincheux",
  age: 65,
  moment: 35,
  description: "Expert en râleries. Idéal pour créer une ambiance de conflit léger dans vos soirées ou pour garder les voisins à distance."
)

jm.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_3.jpg")), filename: 'jean-michel.jpg', content_type: 'image/jpg')
jm.save

lucie = User.new(
  email: "lucie.positif@optimisme.com",
  password: "lucie123",
  name: "Lucie l'Éternelle Optimiste",
  age: 73,
  moment: 51,
  description: "Toujours un sourire en réserve, même sous la pluie. Parfaite pour remonter le moral ou accompagner vos défis personnels."
)

lucie.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_1.jpg")), filename: 'lucie.jpg', content_type: 'image/jpg')
lucie.save

georges = User.new(
  email: "georges.silencieux@zen.com",
  password: "georges123",
  name: "Georges le Silencieux",
  age: 81,
  moment: 128,
  description: "Un maître du silence et de la tranquillité. Apprécié pour son calme et son absence de questions inutiles."
)

georges.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_4.jpg")), filename: 'user.jpg', content_type: 'image/jpg')
georges.save

julie = User.new(
  email: "julie.cuisine@chefdujour.com",
  password: "julie123",
  name: "Julie la Chef Passionnée",
  age: 74,
  moment: 12,
  description: "Transforme des ingrédients simples en plats dignes d'un festin. Idéale pour vos dîners ou ateliers cuisine."
)
julie.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_2.jpg")), filename: 'julie.jpg', content_type: 'image/jpg')
julie.save

paul = User.new(
  email: "paul.curieux@exploration.com",
  password: "paul123",
  name: "Paul l'Aventurier Curieux",
  age: 79,
  moment: 59,
  description: "Toujours prêt à découvrir de nouveaux horizons et à partager ses trouvailles avec passion."
)
paul.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_4.jpg")), filename: 'paul.jpg', content_type: 'image/jpg')
paul.save

claire = User.new(
  email: "claire.artistique@creativite.com",
  password: "claire123",
  name: "Claire la Créative",
  age: 69,
  moment: 90,
  description: "Visionnaire artistique capable de transformer le banal en extraordinaire. Idéale pour ajouter une touche artistique à vos projets."
)
claire.photo.attach(io: File.open(Rails.root.join("db/seeds/users/user_5.jpg")), filename: 'claire.jpg', content_type: 'image/jpg')
claire.save

act_1 = Activity.new(
  name: "Râlerie de haut niveau",
  description: "Jean-Michel vous offre une séance de râlerie de haut niveau. Idéal pour évacuer le stress et les tensions.",
  price: 50,
  address: "Toulouse",
  user: User.first
)

act_1.photo.attach(io: File.open(Rails.root.join("db/seeds/activities/canape.jpg")), filename: 'act_1.jpg', content_type: 'image/jpg')
act_1.save

act_2 = Activity.new(
  name: "Atelier de cuisine créative",
  description: "Lucie vous apprend à transformer des ingrédients simples en plats incroyables. Un moment de convivialité et de partage.",
  price: 80,
  address: "Cugnaux",
  user: User.second
)
act_2.photo.attach(io: File.open(Rails.root.join("db/seeds/activities/repas.jpeg")), filename: 'act_2.jpg', content_type: 'image/jpg')
act_2.save

act_3 = Activity.new(
  name: "Séance de méditation silencieuse",
  description: "Georges vous guide dans une séance de méditation pour atteindre une tranquillité intérieure. Un véritable havre de paix.",
  price: 40,
  address: "Ramonville",
  user: User.third
)
act_3.photo.attach(io: File.open(Rails.root.join("db/seeds/activities/blabla.jpg")), filename: 'act_3.jpg', content_type: 'image/jpg')
act_3.save

act_4 = Activity.create!(
  name: "Randonnée en terres inconnues",
  description: "Paul vous emmène à la découverte de paysages magnifiques et inexplorés. Aucune aventure ne ressemble à la précédente.",
  price: 100,
  address: "Pibrac",
  user: User.fourth
)

act_4.photo.attach(io: File.open(Rails.root.join("db/seeds/activities/balade.jpg")), filename: 'act_4.jpg', content_type: 'image/jpg')
act_4.save


puts "#{User.count} users created"
puts "#{Activity.count} activities created"
