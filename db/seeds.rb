puts "Cleaning db"

Movie.destroy_all

4.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Address.street_name,
    poster_url: Faker::Creature::Animal,
    rating: rand(0..10)
  )
  puts "Movie with id #{movie.id} was created"
end


puts 'All done'
