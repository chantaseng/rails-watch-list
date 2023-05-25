puts "Cleaning db"
Movie.destroy_all

10.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::GreekPhilosophers.name,
    poster_url: Faker::Creature::Animal,
    rating: rand(0..10)
  )
  puts "Movie with id #{movie.id} was created"
end

puts 'All done'
