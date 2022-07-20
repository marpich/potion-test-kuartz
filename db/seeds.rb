# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning the database"

Lot.destroy_all
Bottle.destroy_all
Composition.destroy_all

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

puts "Creating the bottles"

bottle1 = Bottle.new(
  label: "pur",
  qty: 25
)
bottle1.save!

bottle2 = Bottle.new(
  label: "pur",
  qty: 125
)
bottle2.save!

bottle3 = Bottle.new(
  label: "mix",
  qty: 75
)
bottle3.save!

puts "Creating bottles done"

puts "Creating the compositions"

composition1 = Composition.new(
  qty: 25,
  lot: lot3,
  bottle: bottle1
)
composition1.save!

composition2 = Composition.new(
  qty: 75,
  lot: lot1,
  bottle: bottle2
)
composition2.save!

composition3 = Composition.new(
  qty: 50,
  lot: lot2,
  bottle: bottle2
)
composition3.save!

composition4 = Composition.new(
  qty: 25,
  lot: lot3,
  bottle: bottle3
)
composition4.save!

composition5 = Composition.new(
  qty: 50,
  lot: lot2,
  bottle: bottle3
)
composition5.save!

puts "Creating compositions done"
