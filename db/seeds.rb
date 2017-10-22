# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create([
  { name: 'Star Wars',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
    image_url: "http://a.dilcdn.com/bl/wp-content/uploads/sites/6/2017/05/1-star-wars-poster.jpg",
    price_in_cents: 299},
  { name: 'Lord of the Rings',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
    image_url: "https://www.movieartarena.com/imgs/lotr1final.jpg",
    price_in_cents: 299},
  { name: 'Fast and Furious',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
    image_url: "https://ca.movieposter.com/posters/archive/main/167/MPW-83566",
    price_in_cents: 299},
  { name: 'Interstellar',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
    image_url: "https://d3ui957tjb5bqd.cloudfront.net/uploads/2014/11/interstellar-poster-2.jpg",
    price_in_cents: 299},
  { name: "There Will Be Blood",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut ligula dui. Maecenas in sapien cursus, condimentum nulla vitae, pellentesque metus. Sed accumsan tellus et molestie volutpat. Maecenas feugiat, mi.",
    image_url: "https://img00.deviantart.net/03ae/i/2012/342/5/7/there_will_be_blood_poster_final_by_the_amazing_bob-d5ne1hb.jpg",
    price_in_cents: 399}])

reviews = Review.create([
  {user_id: 1,
    product_id: 1,
    content: "Lightsabers!",
    rating: 5},
  {user_id: 2,
    product_id: 2,
    rating: 2,
    content: "So good" },
  {user_id: 2,
    product_id: 3,
    rating: 2,
    content: "I take life one mile at a time."},
  {user_id: 1,
    product_id: 4,
    rating: 3,
    content: "Oil?"},
  {user_id: 1,
    product_id: 4,
    rating: 4,
    content: "Oil?"}])
