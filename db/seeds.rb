# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning the database"

Lot.destroy_all

puts "Creating the lots"

lot1 = Lot.new(
  name: 'Dimethylphenol',
  remaining_qty: 25
)
lot1.save!

lot2 = Lot.new(
  name: 'Dimethylphenol',
  remaining_qty: 0
)
lot2.save!

lot3 = Lot.new(
  name: 'Glyphosate',
  remaining_qty: 50
)
lot3.save!

lot4 = Lot.new(
  name: 'Abamectin',
  remaining_qty: 100
)
lot4.save!

lot5 = Lot.new(
  name: 'Mefluidide',
  remaining_qty: 90
)
lot5.save!

puts "Creating lots done"
