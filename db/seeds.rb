require 'open-uri'

puts 'Wiping data...'

Pitch.destroy_all
Solution.destroy_all
Problem.destroy_all
Vote.destroy_all
User.destroy_all

puts 'Creating 51 users...'

# USERS

default_user = User.create!(
                first_name: "Sharon",
                last_name: "Sheah",
                email: "user@user.com", 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305401/sharon_sheah.jpg_dnrfpw.jpg")
                default_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

50.times do
  fake_user = User.create!(first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email, 
  password: "password"
  )
  file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305401/sharon_sheah.jpg_dnrfpw.jpg")
  fake_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')
end

#FAMOUS USERS

airbnb_founder = User.create!(
                first_name: "Brian", 
                last_name: "Chesky",
                email: Faker::Internet.email,
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305269/brian_chesky_vg8c3n.jpg")
                airbnb_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

uber_founder = User.create!(
                first_name: "Travis", 
                last_name: "Kalanick",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/travis_kalanick_fgwvty.jpg")
                uber_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

facebook_founder = User.create!(
                first_name: "Mark", 
                last_name: "Zuckerberg",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305857/mark_zuckerberg_xzbrw6.jpg")
                facebook_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

importio_founder = User.create!(
                    first_name: "Matthew", 
                    last_name: "Painter",
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/matthew_painter_v4fkwe.jpg")
                    importio_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

recyclebank_founder = User.create!(
                    first_name: "Ron",
                    last_name: "Gonen",
                    email: Faker::Internet.email,
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/ron_gonen_u9zuk5.jpg")
                    recyclebank_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

treeplanet_founder = User.create!(
                    first_name: "Kim", 
                    last_name: "Hyung-soo",
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/kim_hyung_soo_ov1s99.jpg")
                    treeplanet_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

solarity_founder = User.create!(
                    first_name: "Horacio", 
                    last_name: "Melo", 
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305857/horacio_melo_jc7nhh.jpg")
                    solarity_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

aussie_founder = User.create!(
                first_name: "Mathieu", 
                last_name: "Longe",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/mathieu_longe_uga63s.jpg")
                aussie_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

homies_founder = User.create!(
                first_name: "Sergey", 
                last_name: "Osipov",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/sergey_osipov_sut4sf.jpg")
                aussie_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

weather_founder = User.create!(
                first_name: "Sam", 
                last_name: "Cheney",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600305856/sam_cheney_lxydqy.jpg")
                aussie_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')


puts 'Creating problems...'
 
# PROBLEMS
# ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Government", "Unspecified"]

airbnb_problem = Problem.create!(title: "Hotels are too expensive", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: User.all.sample, category: "Consumer")

aussie_problem = Problem.create!(title: "Products made in STRAYAAA", description: "I only want to buy products made in australia by australians for australians. Products made in Australia can be very hard to source (not accessible and take time). No clear supply and hard to interact online with local producers.", user: User.all.sample, category: "Consumer")

heroku_problem = Problem.create!(title: "Heroku keeps ruining my layout", description: "There has to be a better way.", user: User.all.sample, category: "Software & Services")

uber_problem = Problem.create!(title: "Taxis are for boomers", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: User.all.sample, category:"Consumer")

importio_problem = Problem.create!(title: "Scraping data feels like mining", description: "Web pages are full of data, but harvesting that data is often manual and always time-consuming.", user: User.all.sample, category:"Software & Services")

homies_problem = Problem.create!(title: "My flatmate owes me money and doesn't clean the bathroom", description: "There is no centralised digital system to manage all house hold needs.", user: User.all.sample, category: "Consumer")

weather_problem = Problem.create!(title: "Everytime I go out it starts rainning", description: "The weather report is too general, and not actionable based on an individual's schedule.", user: User.all.sample, category: "Unspecified")

recyclebank_problem = Problem.create!(title: "Recycling household waste", description: "Recycling household waste is important but it’s often hard for people to stay committed to this goal.", user: User.all.sample, category: "Software & Services")

treeplanet_problem = Problem.create!(title: "Lack of commitment to planting new trees", description: "Deforestation is responsible for 15% of global greenhouse gas emissions. Planting new trees and whole forests is important for maintaining the natural balance but not so many people are taking action.", user: User.all.sample, category: "Education")

solarity_problem = Problem.create!(title: "Solar energy is not popular enough", description: "Usually solar installations often are built quicker than a transmission network. Thus many companies and individuals can’t benefit from country’s solar energy potential.", user: User.all.sample, category: "Real Estate & Construction")

uaroads_problem = Problem.create!(title: "Lack of quality roads", description: "The quality of Ukrainian roads is nothing but satisfactory. As many as 95% of them need a repair but government lacks money for monitoring their quality.", user: User.all.sample, category: "Real Estate & Construction")

relectrify_problem = Problem.create!(title: "Short life of rechargeable batteries", description: "Rechargeable batteries (especially those used in mobile devices) turn into waste quite quickly but the majority of their storage performance is still out there.", user: User.all.sample, category: "Consumer")

mayapedal_problem = Problem.create!(title: "Access to electricity in Guatemala", description: "The majority of rural communities in Guatemala are living below the poverty line with most work are still being done manually instead of powered by electricity.", user: User.all.sample, category: "Consumer")

zerogachis_problem = Problem.create!(title: "Supermarkets throw away food", description: "Supermarkets often have to throw away food due to expiration.", user: User.all.sample, category: "Consumer")



puts 'Creating solutions...'

# SOLUTIONS

airbnb_solution = Solution.create!(title: "Renting out private owned flats", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: airbnb_founder, problem: airbnb_problem)

aussie_solution = Solution.create!(title: "Proudly Aussie", description: "A free application that connect you to the local producer: the producer is in the spotlight - UX optimized for businesses and customers.", user: aussie_founder, problem: aussie_problem)

uber_solution = Solution.create!(title: "A booking app?", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: uber_founder, problem: uber_problem)

importio_solution = Solution.create!(title: "A user-friendly tool", description: "A tool that allows you to scrape data from websites and transform it into an organized table or structured API in less than a minute with no coding or training required. According to the site, the tool can be and is used for everything from personal data projects to app creation, data journalism, database population, competitive analysis and much more.", user: importio_founder, problem: importio_problem)

homies_solution = Solution.create!(title: "Homies", description: "To build a Web App that keeps track of all bills, chores and events in the house.", user: homies_founder, problem: homies_problem)

weather_solution = Solution.create!(title: "Weather or not", description: "An application that calls publicly available weather forecasts and filters them based on your availability before sending you a notification.", user: weather_founder, problem: weather_problem)

recyclebank_solution = Solution.create!(title: "Gamify the process!", description: "Use gamification methods such as points for making progress, rewards in the form of discounts on goods and the competitive element to encourage people to recycle waste.", user: recyclebank_founder, problem: recyclebank_problem)

treeplanet_solution = Solution.create!(title: "A mobile game", description: "A mobile game about trees with in-game purchases and advertising revenues being spent on planting trees in real life.", user: treeplanet_founder, problem: treeplanet_problem)

solarity_solution = Solution.create!(title: "Smaller instalations", description: "Small- and medium-sizesd photovoltaic installations on rooftops are faster and easier to install. This way companies can immediately benefit from using renewable energy source.", user: solarity_founder, problem: solarity_problem)

puts 'Creating pitches...'

# PITCHES

airbnb_pitch = Pitch.create!(title: "Airbnb", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", link: "https://docs.google.com/presentation/d/1BFFLHUN6acErGNW-huhD6OHMFlXPVmBDdZHFkj46Bg4/preview#slide=id.p", user: airbnb_founder, solution: airbnb_solution)

uber_pitch = Pitch.create!(title: "Uber app", description: "Welcome to our pitch. A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", link: "//www.slideshare.net/slideshow/embed_code/key/jrFtdtaSImlVh1" , user: uber_founder, solution: uber_solution)



puts "Created #{User.all.count} users, #{Problem.all.count} problems, #{Solution.all.count} solutions, #{Pitch.all.count} pitches!"

# VOTES

User.all.each do |user|
    Vote.create!(votable: Problem.all.sample, user: user)
    Vote.create!(votable: Solution.all.sample, user: user)
    Vote.create!(votable: Pitch.all.sample, user: user)
end
