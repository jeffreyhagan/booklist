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
    description: 'Something quick but thought-provoking to get your mind ready for work while you drink your coffee'
  )
  beach = Activity.create(
    name: 'Beach Reading',
    description: 'Something longer but relaxing for soaking up rays'
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
    description: 'Who done it?'
  )

  #Books
  mobydick = Book.create(
    title: 'Moby Dick',
    description: 'Call me Ishmael',
    thumbnail: '',
    author: 'Herman Melville',
    genres: [classic]
  )
  moonstone = Book.create(
    title: 'The Moonstone',
    description: 'Victorian thriller',
    thumbnail: '',
    author: 'Wilkie Collins',
    genres: [classic , mystery]
  )

  #Recommmendations

  puts 'Successfully added seed data'
end
