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
Activity.destroy_all

User.create!(
  email: "admin@admin.com",
  password: "admin123",
  name: "Jean-Michel le Grincheux",
  description: "Expert en râleries. Idéal pour créer une ambiance de conflit léger dans vos soirées ou pour garder les voisins à distance."
)

User.create!(
  email: "lucie.positif@optimisme.com",
  password: "lucie123",
  name: "Lucie l'Éternelle Optimiste",
  description: "Toujours un sourire en réserve, même sous la pluie. Parfaite pour remonter le moral ou accompagner vos défis personnels."
)

User.create!(
  email: "georges.silencieux@zen.com",
  password: "georges123",
  name: "Georges le Silencieux",
  description: "Un maître du silence et de la tranquillité. Apprécié pour son calme et son absence de questions inutiles."
)

User.create!(
  email: "julie.cuisine@chefdujour.com",
  password: "julie123",
  name: "Julie la Chef Passionnée",
  description: "Transforme des ingrédients simples en plats dignes d'un festin. Idéale pour vos dîners ou ateliers cuisine."
)

User.create!(
  email: "paul.curieux@exploration.com",
  password: "paul123",
  name: "Paul l'Aventurier Curieux",
  description: "Toujours prêt à découvrir de nouveaux horizons et à partager ses trouvailles avec passion."
)

User.create!(
  email: "claire.artistique@creativite.com",
  password: "claire123",
  name: "Claire la Créative",
  description: "Visionnaire artistique capable de transformer le banal en extraordinaire. Idéale pour ajouter une touche artistique à vos projets."
)

User.create!(
  email: "marc.tech@geek.com",
  password: "marc123",
  name: "Marc le Technophile",
  description: "Toujours à la pointe des nouvelles technologies. Peut réparer votre ordinateur ou configurer votre maison connectée."
)

Activity.create!(
  name: "Râlerie de haut niveau",
  description: "Jean-Michel vous offre une séance de râlerie de haut niveau. Idéal pour évacuer le stress et les tensions.",
  price: 50,
  address: "Toulouse",
  user: User.first
)

Activity.create!(
  name: "Atelier de cuisine créative",
  description: "Lucie vous apprend à transformer des ingrédients simples en plats incroyables. Un moment de convivialité et de partage.",
  price: 80,
  address: "Cugnaux",
  user: User.second
)

Activity.create!(
  name: "Séance de méditation silencieuse",
  description: "Georges vous guide dans une séance de méditation pour atteindre une tranquillité intérieure. Un véritable havre de paix.",
  price: 40,
  address: "Ramonville",
  user: User.third
)

Activity.create!(
  name: "Randonnée en terres inconnues",
  description: "Paul vous emmène à la découverte de paysages magnifiques et inexplorés. Aucune aventure ne ressemble à la précédente.",
  price: 100,
  address: "Pibrac",
  user: User.fourth
)

Activity.create!(
  name: "Atelier artistique expressif",
  description: "Claire vous initie à l'art expressif en peinture, sculpture ou dessin. Libérez votre créativité dans une ambiance détendue.",
  price: 70,
  address: "Colomiers",
  user: User.fifth
)

Activity.create!(
  name: "Initiation aux nouvelles technologies",
  description: "Marc vous montre comment utiliser les dernières innovations tech pour simplifier votre quotidien. Adapté à tous les niveaux.",
  price: 60,
  address: "Blagnac",
  user: User.last
)

puts "#{User.count} users created"
puts "#{Activity.count} activities created"
