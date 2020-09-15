# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Wiping data...'

User.destroy_all
Problem.destroy_all
Solution.destroy_all
Pitch.destroy_all

# puts 'Creating 1 default user...'

# USERS

default_user = User.create(first_name: "Sharon", last_name: "Sheah", email: "user@user.com", password: "password")


user1 = User.create(first_name: "Raelene", last_name: "Ho", email: "user1@user.com", password: "password")


user2 = User.create(first_name: "Maite", last_name: "Eguren Brown", email: "user2@user.com", password: "password")

user3 = User.create(first_name: "Annmarie", last_name: "De Silva", email: "user3@user.com", password: "password")

user4 = User.create(first_name: "Tiffany", last_name: "Duong", email: "user4@user.com", password: "password")

user5 = User.create(first_name: "Maya", last_name: "Sehgal", email: "user5@user.com", password: "password")

# PROBLEMS

airbnb_problem = Problem.create(title: "Airbnb Problems", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: default_user)

uber_problem = Problem.create(title: "Uber Problems", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: user2)

# SOLUTIONS

airbnb_solution = Solution.create(title: "Airbnb Solution", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: user1)

uber_solution = Solution.create(title: "Uber Solution", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: user3)
