# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create([
  { name: 'Star Wars',
  price_in_cents: 299,
  description: "In the stars" },
  { name: 'Lord of the Rings',
  price_in_cents: 299,
  description: "Some guys go to a volcano to destroy some other guy's ring." },
  {name: 'Fast and Furious',
  price_in_cents: 299,
  description: "Fast cars. Faster characters."},
  {name: "There will be blood",
  price_in_cents: 399,
  description: "Oil? Milkshakes?"}])

reviews = Review.create([
  { user_id: 1,
  product_id: 1,
  content: "Lightsabers!" },
  { user_id: 2,
  product_id: 2,
  content: "Gasping emoji." },
  {user_id: 2,
  product_id: 3,
  content: "I take life one mile at a time."},
  {user_id: 1,
  product_id: 4,
  content: "Oil? Milkshakes?"}])
