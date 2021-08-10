# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    first_name: "Hans",
    last_name: "Solo",
    password: "asdf",
    email: "hans@gmail.com"
)

User.create(
    first_name: "Peter",
    last_name: "Parker",
    password: "asdf",
    email: "asdf"
)

User.create(
    first_name: "Connor Z",
    last_name: "Rodgers",
    password: "asdf",
    email: "connorz@gmail.com"
)

User.create(
    first_name: "Sam K",
    last_name: " Mackerras",
    password: "asdf",
    email: "samk@gmail.com"
)

Task.create(
  user_id: 3,
  title: "Moving boxes",
  description: 'I need help with moving 10 boxes to my apartment. You should be able to handle 150 lbs.',
)

Task.create(
  user_id: 1,
  title: "Mowing Lawn",
  description: 'Getting pretty long',
)
