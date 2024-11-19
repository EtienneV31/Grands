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



User.create!(
  email: "admin@admin.com",
  password: "admin123",
  name: "Jean-Michel le Grincheux",
  description: "Expert en râleries. Idéal pour créer une ambiance de conflit léger dans vos soirées ou pour garder les voisins à distance.",
)

User.create!(
  name: "Ginette la Reine du Tricot",
  description: "Peut tricoter un pull en moins de 24h tout en vous racontant les ragots de son immeuble. Garantie de ne jamais s’arrêter de parler.",
)

User.create!(
  name: "Maurice le Champion de Belote",
  description: "Vient avec son propre jeu de cartes et un talent inégalé pour tricher sans se faire attraper. Parfait pour animer vos dimanches.",
)

User.create!(
  name: "Suzanne la Mamie Rock'n'Roll",
  description: "Fan de Led Zeppelin et de tatouages. Prête à faire des solos de guitare (invisible) et vous apprendre des pas de twist.",
)

User.create!(
  name: "Henri l’Ancien Cuisinier",
  description: "Peut préparer un cassoulet qui mettra tout le monde d’accord, mais insiste pour utiliser sa propre poêle en fonte de 1942.",
)

User.create!(
  name: "Monique la Nostalgique",
  description: "Passionnée par les récits d’avant 1960. Peut parler de 'la belle époque' pendant des heures. Idéal pour vos longues soirées pluvieuses.",
)

User.create!(
  name: "Roger le Jardinier Fou",
  description: "Transformera votre pelouse en œuvre d’art… ou en chaos total, selon son humeur. Fournit ses propres outils rouillés.",
)

User.create!(
  name: "Claudette la Grande Gueule",
  description: "Parfaite pour des disputes fictives dans des lieux publics. Claudette maîtrise l’art de l’embarras social et des regards accusateurs.",
)

User.create!(
  name: "Georgette la Mamie Gâteau",
  description: "Arrive toujours avec des biscuits maison et des bonbons à la menthe. Parfait pour les goûters improvisés.",
)

User.create!(
  name: "Albert le Collectionneur d’Horloges",
  description: "Peut passer des heures à parler des horloges, des montres, et de tout ce qui fait tic-tac. Attention : sujet à débat sur le temps qui passe.",
)

puts "#{User.count} elders created"
