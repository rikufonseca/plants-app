# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garden.destroy_all
Plant.destroy_all

puts "create gardens..."

garden1 = Garden.create(name: "The tropical flowers")
garden1.banner_url.attach(io: File.open("app/assets/images/tropical-flower-garden.jpg"), filename: "tropical-flower-garden.jpg", content_type: "image/jpeg")

garden2 = Garden.create(name: "The carnivorous flowers")
garden2.banner_url.attach(io: File.open("app/assets/images/carnivorous-garden.jpg"), filename: "carnivorous-garden.jpg", content_type: "image/jpeg")

puts "gardens created..."

puts "create plants.."

plants1 = Plant.create(name: "Heliconia", garden_id: garden1.id )
plants1.image_url.attach(io: File.open("app/assets/images/heliconia.jpg"), filename: "heliconia.jpg")

puts "seed done"
