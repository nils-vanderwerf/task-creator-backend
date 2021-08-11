# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(
#     first_name: "Hans",
#     last_name: "Solo",
#     password: "asdf",
#     email: "hans@gmail.com"
# )

# User.create(
#     first_name: "Peter",
#     last_name: "Parker",
#     password: "asdf",
#     email: "asdf"
# )

# User.create(
#     first_name: "Connor Z",
#     last_name: "Rodgers",
#     password: "asdf",
#     email: "connorz@gmail.com"
# )

# User.create(
#     first_name: "Sam K",
#     last_name: " Mackerras",
#     password: "asdf",
#     email: "samk@gmail.com"
# )

# Task.create(
#   user_id: 3,
#   title: "Moving boxes",
#   description: 'I need help with moving 10 boxes to my apartment. You should be able to handle 150 lbs.',
# )

# Task.create(
#   user_id: 1,
#   title: "Mowing Lawn",
#   description: 'Getting pretty long',
# )

Category.create(
    title: "Help Around House",
    description: "Cleaning, yard maintenance, and home-office duties."
)

Category.create(
    title: "Personal Care",
    description: "Showering, toileting and mealtime assistance at home or in the community."
)

Category.create(
    title: "Education and employment",
    description: "Coaching to help you achieve your goals at school, college or work."
)

Category.create(
    title: "In home care",
    description: "In home care."
)

Category.create(
    title: "Transport",
    description: " Help to get your chores done or travel from A to B."
)

Category.create!(
    title: "Out and about",
    description: "Support to get out, take a class, exercise, volunteer or go to gatherings."
)

Category.create(
    title: "Therapy",
    description: "Therapy may include: Occupational therapy,
        Hydrotherapy, Exercise physiology, Counselling"
)


Category.create(
    title: "Specialised (Complex)",
    description: "May include but not limited to: Manual Handling (lifting, hoisting, transfers), Anaphylaxis. Allergies Epilepsy/Seizure Management. PEG/Enteral Feeding. Catheter Care. Medication Management. Mealtime Management. Swallow/Nutrition. Bowel Care. Diabetes Management. Positive Behaviour Support."
)
