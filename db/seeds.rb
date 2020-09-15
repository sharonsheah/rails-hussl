puts 'Wiping data...'

Pitch.destroy_all
Solution.destroy_all
Problem.destroy_all
User.destroy_all

puts 'Creating 51 users...'

# USERS

default_user = User.create!(first_name: "Sharon", last_name: "Sheah", email: "user@user.com", password: "password")

50.times do
    User.create!(first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    password: "password")
end

#FAMOUS USERS

airbnb_founder = User.create!(
                first_name: "Brian", 
                last_name: "Chesky", 
                email: Faker::Internet.email, 
                password: "password")

uber_founder = User.create!(
                first_name: "Travis", 
                last_name: "Kalanick", 
                email: Faker::Internet.email, 
                password: "password")

facebook_founder = User.create!(
                first_name: "Mark", 
                last_name: "Zuckerberg", 
                email: Faker::Internet.email, 
                password: "password")

importio_founder = User.create!(
                    first_name: "Matthew", 
                    last_name: "Painter", 
                    email: Faker::Internet.email, 
                    password: "password")



puts 'Creating problems...'
 
# PROBLEMS
# ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Government", "Unspecified"]

airbnb_problem = Problem.create!(title: "Hotels are too expensive", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: User.all.sample, category: "Consumer")

uber_problem = Problem.create!(title: "Taxis are for boomers", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: User.all.sample, category:"Consumer")


-------------------

importio_problem = Problem.create!(title: "I hate scraping data", description: "Web pages are full of data, but harvesting that data is often manual and always time-consuming.", user: User.all.sample, category:"Software & Services")






problem_one = Problem.create!(title: "Recycling household waste", description: "Recycling household waste is important but it’s often hard for people to stay committed to this goal.", user: User.all.sample, category: "Unspecified")

problem_two = Problem.create!(title: "Lack of commitment to planting new trees", description: "Deforestation is responsible for 15% of global greenhouse gas emissions. Planting new trees and whole forests is important for maintaining the natural balance but not so many people are taking action.", user: User.all.sample, category: "Unspecified")

problem_three = Problem.create!(title: "Solar installations built quicker than transmission", description: "While Chile is considered to be a leader of South American renewable energy sector, there’s still a transmission problem since solar installations often were built quicker than a transmission network. Thus many companies and individuals can’t benefit from country’s solar energy potential.", user: User.all.sample, category: "Unspecified")

problem_four = Problem.create!(title: "Lack of quality roads", description: "The quality of Ukrainian roads is nothing but satisfactory. As many as 95% of them need a repair but government lacks money for monitoring their quality.", user: User.all.sample, category: "Unspecified")

problem_five = Problem.create!(title: "Short life of rechargeable batteries", description: "Rechargeable batteries (especially those used in mobile devices) turn into waste quite quickly but the majority of their storage performance is still out there.", user: User.all.sample, category: "Unspecified")

problem_six = Problem.create!(title: "Access to electricity in Guatemala", description: "The majority of rural communities in Guatemala are living below the poverty line with most work are still being done manually instead of powered by electricity.", user: User.all.sample, category: "Unspecified")

problem_seven = Problem.create!(title: "Supermarkets throw away food", description: "Supermarkets often have to throw away food due to expiration.", user: User.all.sample, category: "Unspecified")


puts 'Creating solutions...'

# SOLUTIONS

airbnb_solution = Solution.create!(title: "Renting out private owned flats", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: airbnb_founder, problem: airbnb_problem)

uber_solution = Solution.create!(title: "A booking app?", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: uber_founder, problem: uber_problem)

importio_solution = Solution.create!(title: "A user-friendly tool", description: "A tool that allows you to scrape data from websites and transform it into an organized table or structured API in less than a minute with no coding or training required. According to the site, the tool can be and is used for everything from personal data projects to app creation, data journalism, database population, competitive analysis and much more.", user: importio_founder, problem: importio_problem)

puts 'Creating pitches...'

# PITCHES

airbnb_pitch = Pitch.create!(title: "Airbnb Pitch", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: airbnb_founder, solution: airbnb_solution)

uber_pitch = Pitch.create!(title: "Uber Pitch", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: uber_founder, solution: uber_solution)

puts "Created #{User.all.count} users, #{Problem.all.count} problems, #{Solution.all.count} solutions, #{Pitch.all.count} pitches!"

# VOTES

User.all.each do |user|
    Vote.create!(votable: Problem.all.sample, user: user)
end
