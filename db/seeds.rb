puts 'Wiping data...'

Pitch.destroy_all
Solution.destroy_all
Problem.destroy_all
User.destroy_all

puts 'Creating default users...'

# USERS

default_user = User.create!(first_name: "Sharon", last_name: "Sheah", email: "user@user.com", password: "password")

user1 = User.create!(first_name: "Raelene", last_name: "Ho", email: "user1@user.com", password: "password")

user2 = User.create!(first_name: "Maite", last_name: "Eguren Brown", email: "user2@user.com", password: "password")

user3 = User.create!(first_name: "Annmarie", last_name: "De Silva", email: "user3@user.com", password: "password")

user4 = User.create!(first_name: "Tiffany", last_name: "Duong", email: "user4@user.com", password: "password")

user5 = User.create!(first_name: "Maya", last_name: "Sehgal", email: "user5@user.com", password: "password")

puts 'Creating problems...'

# PROBLEMS

airbnb_problem = Problem.create!(title: "Airbnb Problems", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: default_user, category: "Unspecified")

uber_problem = Problem.create!(title: "Uber Problems", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: user2)

problem_one = Problem.create!(title: "Recycling household waste", description: "Recycling household waste is important but it’s often hard for people to stay committed to this goal.", user: user3, category: "Unspecified")

problem_two = Problem.create!(title: "Lack of commitment to planting new trees", description: "Deforestation is responsible for 15% of global greenhouse gas emissions. Planting new trees and whole forests is important for maintaining the natural balance but not so many people are taking action.", user: user4, category: "Unspecified")

problem_three = Problem.create!(title: "Solar installations built quicker than transmission", description: "While Chile is considered to be a leader of South American renewable energy sector, there’s still a transmission problem since solar installations often were built quicker than a transmission network. Thus many companies and individuals can’t benefit from country’s solar energy potential.", user: user5, category: "Unspecified")

problem_four = Problem.create!(title: "Lack of quality roads", description: "The quality of Ukrainian roads is nothing but satisfactory. As many as 95% of them need a repair but government lacks money for monitoring their quality.", user: user1, category: "Unspecified")

problem_five = Problem.create!(title: "Short life of rechargeable batteries", description: "Rechargeable batteries (especially those used in mobile devices) turn into waste quite quickly but the majority of their storage performance is still out there.", user: user2, category: "Unspecified")

problem_six = Problem.create!(title: "Access to electricity in Guatemala", description: "The majority of rural communities in Guatemala are living below the poverty line with most work are still being done manually instead of powered by electricity.", user: user3, category: "Unspecified")

problem_seven = Problem.create!(title: "Supermarkets throw away food", description: "Supermarkets often have to throw away food due to expiration.", user: user4, category: "Unspecified")


puts 'Creating solutions...'

# SOLUTIONS

airbnb_solution = Solution.create!(title: "Airbnb Solution", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: user1, problem: airbnb_problem)

uber_solution = Solution.create!(title: "Uber Solution", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: user3, problem: uber_problem)

puts 'Creating pitches...'

# PITCHES

airbnb_pitch = Pitch.create!(title: "Airbnb Pitch", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: user2, solution: airbnb_solution)

uber_pitch = Pitch.create!(title: "Uber Pitch", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: user4, solution: uber_solution)

puts "Created #{User.all.count} users, #{Problem.all.count} problems, #{Solution.all.count} solutions, #{Pitch.all.count} pitches!"

# VOTES

# 10.times do
#     vote = Vote.create(votable: Problem.all.sample, user: User.all.sample)
# end
