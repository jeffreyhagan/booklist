# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  # Activities
  bathroom = Activity.create(
    name: 'Bathroom Break',
    description: 'Quick and stimulating to pass the time'
  )
  beach = Activity.create(
    name: 'Lying on the Beach',
    description: 'Long and relaxing for soaking up rays'
  )
  bed = Activity.create(
    name: 'Going to Bed',
    description: 'Interesting but not too interesting'
  )
  creative = Activity.create(
    name: 'Being Creative',
    description: 'Thinking outside the box'
  )
  cafe = Activity.create(
    name: 'Sitting in a Cafe',
    description: 'Something to make you look cool'
  )
  crying = Activity.create(
    name: 'Crying',
    description: ''
  )
  commute = Activity.create(
    name: 'Morning Commute',
    description: 'Quick and thought-provoking as you drink your coffee'
  )
  park = Activity.create(
    name: 'On a Park Bench',
    description: 'Long and relaxing'
  )
  plane = Activity.create(
    name: 'Long Plane Ride',
    description: 'Absorbing and easy to read'
  )
  subway = Activity.create(
    name: 'Subway at Night',
    description: ''
  )
  waiting = Activity.create(
    name: 'In a Waiting Room',
    description: 'Quick and easy'
  )
  rain = Activity.create(
    name: 'Rainy Day',
    description: ''
  )
  tv = Activity.create(
    name: 'Wishing You Were Watching TV',
    description: 'Based on your favorite shows'
  )
  fire = Activity.create(
    name: 'By the Fire',
    description: ''
  )
  world = Activity.create(
    name: 'Taking Over the World',
    description: ''
  )

  #Users
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
  comics = Genre.create(
    name: 'Comics & Graphic Novels',
    description: ''
  )
  contemporary = Genre.create(
    name: 'Contemporary Fiction',
    description: 'The latest and the greatest'
  )
  fantasy = Genre.create(
    name: 'Fantasy',
    description: ''
  )
  history = Genre.create(
    name: 'History',
    description: 'Doomed to repeat it'
  )
  horror = Genre.create(
    name: 'Horror',
    description: 'Spooky'
  )
  mystery = Genre.create(
    name: 'Mystery',
    description: 'Whodunit?'
  )
  nonfiction = Genre.create(
    name: 'Non-Fiction',
    description: 'Never stop learning'
  )
  romance = Genre.create(
    name: 'Romance',
    description: 'Love is all you need'
  )
  scifi = Genre.create(
    name: 'Science Fiction',
    description: 'The future is now'
  )

  #Books
  mobydick = Book.create(
    title: 'Moby Dick',
    description: 'Moby-Dick is at once a thrilling adventure tale, a timeless allegory, and an epic saga of heroic determination and conflict. At its heart is the powerful, unknowable sea—and Captain Ahab, a brooding, one-legged fanatic who has sworn vengeance on the mammoth white whale that crippled him. ',
    thumbnail: 'http://ecx.images-amazon.com/images/I/917Xsj5UYML.jpg',
    author: 'Herman Melville',
    genres: [classic],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  moonstone = Book.create(
    title: 'The Moonstone',
    description: 'Stolen from the forehead of a Hindu idol, the dazzling gem known as "The Moonstone" resurfaces at a birthday party in an English country home — with an enigmatic trio of watchful Brahmins hot on its trail.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/61PGRPDsPKL.jpg',
    author: 'Wilkie Collins',
    genres: [classic , mystery],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  nineteen = Book.create(
    title: '1984',
    description: 'Written in 1948, 1984 was George Orwell’s chilling prophecy about the future.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/71DgPQAEnFL.jpg',
    author: 'George Orwell',
    genres: [classic , scifi], 
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  watchmen = Book.create(
    title: 'Watchmen',
    description: 'Considered the greatest graphic novel in the history of the medium, the Hugo Award-winning story chronicles the fall from grace of a group of super-heroes plagued by all-too-human failings.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/313cFTb5BFL.jpg',
    author: 'Alan Moore',
    genres: [classic , comics],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  gonegirl = Book.create(
    title: 'Gone Girl',
    description: 'On a warm summer morning in North Carthage, Missouri, it is Nick and Amy Dunne’s fifth wedding anniversary. Presents are being wrapped and reservations are being made when Nick’s clever and beautiful wife disappears.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/41yZreG2lcL.jpg',
    author: 'Gillian Flynn',
    genres: [mystery , contemporary , horror],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  harrypotter = Book.create(
    title: 'Harry Potter and the Sorcerers Stone',
    description: 'Harry Potter has no idea how famous he is...',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51MU5VilKpL.jpg',
    author: 'JK Rowling',
    genres: [fantasy, contemporary, classic],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  roosevelt = Book.create(
    title: 'The Rise of Theodore Roosevelt',
    description: 'Described by the Chicago Tribune as "a classic," The Rise of Theodore Roosevelt stands as one of the greatest biographies of our time. ',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51xJ33tXERL.jpg',
    author: 'Edmund Morris',
    genres: [history, contemporary, nonfiction],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  shining = Book.create(
    title: 'The Shining',
    description: 'Jack Torrance’s new job at the Overlook Hotel is the perfect chance for a fresh start...',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51bN7u6JPuL.jpg',
    author: 'Edmund Morris',
    genres: [horror, contemporary, classic],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  cosmos = Book.create(
    title: 'Cosmos',
    description: 'Cosmos is one of the bestselling science books of all time.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51SX54fcT-L.jpg',
    author: 'Carl Sagan',
    genres: [nonfiction, contemporary, classic, history, scifi],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )  
  fiftyshades = Book.create(
    title: 'Fifty Shades of Grey',
    description: 'When literature student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who is beautiful, brilliant, and intimidating.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/515kzV0-w%2BL.jpg',
    author: 'E.L. James',
    genres: [contemporary, romance],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
   hitchhikers = Book.create(
    title: 'The Hitchhikers Guide to the Galaxy',
    description: 'Seconds before the Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhikers Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/813iyiHsBML.jpg',
    author: 'Douglas Adams',
    genres: [contemporary, scifi],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  gameofthrones = Book.create(
    title: 'Game of Thrones',
    description: 'Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. ',
    thumbnail: 'http://ecx.images-amazon.com/images/I/5163N91r6lL.jpg',
    author: 'George R. R. Martin',
    genres: [contemporary, fantasy],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  beloved = Book.create(
    title: 'Beloved',
    description: 'Staring unflinchingly into the abyss of slavery, this spellbinding novel transforms history into a story as powerful as Exodus and as intimate as a lullaby. ',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51srBOCdgBL.jpg',
    author: 'Toni Morrison',
    genres: [contemporary, classic, history],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  givingtree = Book.create(
    title: 'The Giving Tree',
    description: 'Once there was a tree...and she loved a little boy.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/91MD7TSh8tL.jpg',
    author: 'Shel Silverstein',
    genres: [contemporary, classic],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  mockingbird = Book.create(
    title: 'To Kill a Mockingbird',
    description: 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/715VLP6M-OL.jpg',
    author: 'Harper Lee',
    genres: [classic, mystery],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  bigsleep = Book.create(
    title: 'The Big Sleep',
    description: 'When a dying millionaire hires Philip Marlowe to handle the blackmailer of one of his two troublesome daughters, Marlowe finds himself involved with more than extortion.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/41jrf0klMDL.jpg',
    author: 'Raymond Chandler',
    genres: [classic, mystery, romance],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world],
  )
  walkingdead = Book.create(
    title: 'The Walking Dead',
    description: 'The world we knew is gone.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/617Ci4noN1L.jpg',
    author: 'Robert Kirkman, Tony Moore',
    genres: [comics, horror, contemporary],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  howto = Book.create(
    title: 'How to Win Friends & Influence People',
    description: 'For more than sixty years the rock-solid, time-tested advice in this book has carried thousands of now famous people up the ladder of success in their business and personal lives.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/810IASGMUYL.jpg',
    author: 'Dale Carnegie',
    genres: [classic, nonfiction],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  munro = Book.create(
    title: 'Selected Stories of Alice Munro',
    description: 'Spanning almost thirty years and settings that range from big cities to small towns and farmsteads of rural Canada, this magnificent collection brings together twenty-eight stories by a writer of unparalleled wit, generosity, and emotional power.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/41Zm%2BHnq8TL.jpg',
    author: 'Alice Munro',
    genres: [classic, contemporary],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )
  kavalier = Book.create(
    title: 'The Amazing Adventures of Kavalier & Clay',
    description: 'The beloved, award-winning The Amazing Adventures of Kavalier & Clay, a Michael Chabon masterwork, is the American epic of two boy geniuses named Joe Kavalier and Sammy Clay.',
    thumbnail: 'http://ecx.images-amazon.com/images/I/51o-JQnLkiL.jpg',
    author: 'Michael Chabon',
    genres: [contemporary, comics],
    activities: [bathroom, beach, bed, creative, cafe, crying, commute, park, plane, subway, waiting, rain, tv, fire, world]
  )



  puts 'Successfully added seed data'
end
