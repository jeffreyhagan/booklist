# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  # Activities
  commuting = Activity.create(
    name: 'Commuting to Work',
    description: 'Quick and thought-provoking as you drink your coffee'
  )
  beach = Activity.create(
    name: 'Beach Reading',
    description: 'Long and relaxing for soaking up rays'
  )
  toilet = Activity.create(
    name: 'On the Toilet',
    description: 'Quick and stimulating to pass the time'
  )
  cafe = Activity.create(
    name: 'Sitting in a Cafe',
    description: 'Something to make you look cool'
  )
  plane = Activity.create(
    name: 'Long Plane Ride',
    description: 'Absorbing and easy to read'
  )
  bed = Activity.create(
    name: 'Going to Bed',
    description: 'Interesting but not too interesting'
  )
  waiting = Activity.create(
    name: 'Waiting Room',
    description: 'Quick and easy'
  )
  creative = Activity.create(
    name: 'Being Creative',
    description: 'Thinking outside the box'
  )
  tv = Activity.create(
    name: 'Not watching TV',
    description: 'Based on your favorite shows'
  )

  #Users
  admin = User.create(
    email: 'jeffhagan@gmail.com',
    password: 'booklist2admin',
    password_confirmation: 'booklist2admin'
  )
  jeff = User.create(
    email: 'jshagan88@gmail.com',
    password: 'jeffhagan',
    password_confirmation: 'jeffhagan'
  )

  #Genres
  classic = Genre.create(
    name: 'Classic',
    description: 'Oldies but goodies'
  )
  mystery = Genre.create(
    name: 'Mystery',
    description: 'Whodunit?'
  )
  scifi = Genre.create(
    name: 'Science Fiction',
    description: 'The future is now'
  )
  fantasy = Genre.create(
    name: 'Fantasy',
    description: ''
  )
  contemporary = Genre.create(
    name: 'Contemporary Fiction',
    description: 'The latest and the greatest'
  )
  nonfiction = Genre.create(
    name: 'Non-Fiction',
    description: 'Never stop learning'
  )
  romance = Genre.create(
    name: 'Romance',
    description: 'Love is all you need'
  )
  comics = Genre.create(
    name: 'Comics/Graphic Novels',
    description: ''
  )
  horror = Genre.create(
    name: 'Horror',
    description: 'Spooky'
  )
  history = Genre.create(
    name: 'History',
    description: 'Doomed to repeat it'
  )

  #Books
  mobydick = Book.create(
    title: 'Moby Dick',
    description: 'Call me Ishmael',
    thumbnail: '',
    author: 'Herman Melville',
    genres: [classic],
    activities: [cafe, creative, beach]
  )
  moonstone = Book.create(
    title: 'The Moonstone',
    description: 'Victorian thriller',
    thumbnail: '',
    author: 'Wilkie Collins',
    genres: [classic , mystery],
    activities: [beach, plane]
  )
  nineteen = Book.create(
    title: '1984',
    description: 'Big Brother is watching',
    thumbnail: '',
    author: 'George Orwell',
    genres: [classic , scifi], 
    activities: [cafe, commuting]
  )

  watchmen = Book.create(
    title: 'Watchmen',
    description: 'Superheroes',
    thumbnail: '',
    author: 'Alan Moore',
    genres: [classic , comics],
    activities: [beach, plane, waiting, commuting]
  )

  puts 'Successfully added seed data'
end
