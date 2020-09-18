require 'open-uri'

puts 'Wiping data...'

Collaboration.destroy_all
Pitch.destroy_all
Solution.destroy_all
Problem.destroy_all
Vote.destroy_all
User.destroy_all

puts 'Creating 52 users...'

# USERS

default_user = User.create!(
                first_name: "Sharon",
                last_name: "Sheah",
                email: "user@user.com", 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/sharon_sheah.jpg_qhu4tc.jpg")
                default_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')
default_user2 = User.create!(
                first_name: "Raelene",
                last_name: "Ho",
                email: "user2@user.com", 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/sharon_sheah.jpg_qhu4tc.jpg")
                default_user2.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')



# 50.times do
#   fake_user = User.create!(first_name: Faker::Name.first_name, 
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email, 
#   password: "password"
#   )
# end

#FAMOUS USERS

airbnb_founder = User.create!(
                first_name: "Brian", 
                last_name: "Chesky",
                email: Faker::Internet.email,
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/brian_chesky_ab5qna.jpg")
                airbnb_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

uber_founder = User.create!(
                first_name: "Travis", 
                last_name: "Kalanick",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/travis_kalanick_k91mjw.jpg")
                uber_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

facebook_founder = User.create!(
                first_name: "Mark", 
                last_name: "Zuckerberg",
                email: "markzuckerberg@user.com", 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394323/mark_zuckerberg_yrbimu.jpg")
                facebook_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

importio_founder = User.create!(
                    first_name: "Matthew", 
                    last_name: "Painter",
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/matthew_painter_t5mt1n.jpg")
                    importio_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

recyclebank_founder = User.create!(
                    first_name: "Ron",
                    last_name: "Gonen",
                    email: Faker::Internet.email,
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/ron_gonen_bxihto.jpg")
                    recyclebank_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

treeplanet_founder = User.create!(
                    first_name: "Kim", 
                    last_name: "Hyung-soo",
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/kim_hyung_soo_jj8wzo.jpg")
                    treeplanet_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

solarity_founder = User.create!(
                    first_name: "Horacio", 
                    last_name: "Melo", 
                    email: Faker::Internet.email, 
                    password: "password"
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/horacio_melo_xvrbaj.jpg")
                    solarity_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

aussie_founder = User.create!(
                first_name: "Mathieu", 
                last_name: "Longe",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/mathieu_longe_ygpsvu.jpg")
                aussie_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

homies_founder = User.create!(
                first_name: "Sergey", 
                last_name: "Osipov",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/sergey_osipov_yfpqvh.jpg")
                homies_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

weather_founder = User.create!(
                first_name: "Sam", 
                last_name: "Cheney",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/sam_cheney_xjvt2a.jpg")
                weather_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

canva_founder = User.create!(
                first_name: "Melanie", 
                last_name: "Perkins",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600396202/melanie_perkins_qz0d1v.jpg")
                canva_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

spanx_founder = User.create!(
                first_name: "Sara", 
                last_name: "Blakely",
                email: Faker::Internet.email, 
                password: "password"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600398527/sara_blakely_do9tle.jpg")
                spanx_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')


# puts 'Creating problems...'
 
# # PROBLEMS
# # ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Government", "Unspecified"]

# airbnb_problem = Problem.create!(title: "Hotels are too expensive", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: User.all.sample, category: "Consumer")

# facebook_problem = Problem.create!(title: "Can't remember my high school mates faces", description: "I want to keep in touch with my high school friends and watch the rest of my cohort go bald or age gracefully. It's so difficult to keep in touch. Can someone think of a solution for this??", user: User.all.sample, category: "Software & Services")

# aussie_problem = Problem.create!(title: "Products made in STRAYAAA", description: "I only want to buy products made in australia by australians for australians. Products made in Australia can be very hard to source (not accessible and take time). No clear supply and hard to interact online with local producers.", user: User.all.sample, category: "Consumer")

# heroku_problem = Problem.create!(title: "Heroku keeps ruining my layout", description: "There has to be a better way.", user: User.all.sample, category: "Software & Services")

# uber_problem = Problem.create!(title: "Taxis are for boomers", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: User.all.sample, category:"Software & Services")

# importio_problem = Problem.create!(title: "Scraping data feels like mining", description: "Web pages are full of data, but harvesting that data is often manual and always time-consuming.", user: User.all.sample, category:"Software & Services")

# homies_problem = Problem.create!(title: "My flatmate owes me money and doesn't clean the bathroom", description: "There is no centralised digital system to manage all house hold needs.", user: User.all.sample, category: "Software & Services")

# weather_problem = Problem.create!(title: "Everytime I go out it starts raining", description: "The weather report is too general, and not actionable based on an individual's schedule.", user: User.all.sample, category: "Unspecified")

# recyclebank_problem = Problem.create!(title: "Recycling household waste", description: "Recycling household waste is important but it’s often hard for people to stay committed to this goal.", user: User.all.sample, category: "Software & Services")

# treeplanet_problem = Problem.create!(title: "Lack of commitment to planting new trees", description: "Deforestation is responsible for 15% of global greenhouse gas emissions. Planting new trees and whole forests is important for maintaining the natural balance but not so many people are taking action.", user: User.all.sample, category: "Education")

# solarity_problem = Problem.create!(title: "Solar energy is not popular enough", description: "Usually solar installations often are built quicker than a transmission network. Thus many companies and individuals can’t benefit from country’s solar energy potential.", user: User.all.sample, category: "Real Estate & Construction")

# uaroads_problem = Problem.create!(title: "Lack of quality roads", description: "The quality of Ukrainian roads is nothing but satisfactory. As many as 95% of them need a repair but government lacks money for monitoring their quality.", user: User.all.sample, category: "Real Estate & Construction")

# relectrify_problem = Problem.create!(title: "Short life of rechargeable batteries", description: "Rechargeable batteries (especially those used in mobile devices) turn into waste quite quickly but the majority of their storage performance is still out there.", user: User.all.sample, category: "Consumer")

# mayapedal_problem = Problem.create!(title: "Access to electricity in Guatemala", description: "The majority of rural communities in Guatemala are living below the poverty line with most work are still being done manually instead of powered by electricity.", user: User.all.sample, category: "Consumer")

# zerogachis_problem = Problem.create!(title: "Supermarkets throw away food", description: "Supermarkets often have to throw away food due to expiration.", user: User.all.sample, category: "Consumer")

# canva_problem = Problem.create!(title: "Designers are so expensive", description: "I run a small business and Adobe is too expensive and too difficult to use. There has to be q more affordable way to get quick graphics for my marketing! I don't know how to design too and graphic designers are too expensive!", user: User.all.sample, category: "Software & Services")

# spanx_problem = Problem.create!(title: "Undergarment problems", description: "I had spent money on a pair of cream pants. I spent $98 dollars on them, which, for me, was a lot of money. And they just hung in my closet unworn because every time I would go to wear them, you could see the undergarment.", user: User.all.sample, category: "Consumer")


# puts 'Creating solutions...'

# # SOLUTIONS

# airbnb_solution = Solution.create!(title: "Renting out private owned flats", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: airbnb_founder, problem: airbnb_problem)

# aussie_solution = Solution.create!(title: "Proudly Aussie", description: "A free application that connect you to the local producer: the producer is in the spotlight - UX optimized for businesses and customers.", user: aussie_founder, problem: aussie_problem)

# uber_solution = Solution.create!(title: "Cab booking app", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: uber_founder, problem: uber_problem)

# grab_solution = Solution.create!(title: "Ride sharing for SEA", description: "A multilingual taxi booking app that auto-detects customers' current location. It is very important that Southeast Asian countries' transportation sector are often chaotic and unorganised. We need to build something that can fit into the SEA market. A final established price is essential in SEA.", user: User.all.sample, problem: uber_problem)

# didi_solution = Solution.create!(title: "Focus on drivers' happiness", description: "A ride sharing app that focuses on giving driver's satisfaction and benefits by providing insurance and subsidies.", user: User.all.sample, problem: uber_problem)

# importio_solution = Solution.create!(title: "User-friendly dev tool", description: "A dev tool that allows you to scrape data from websites and transform it into an organized table or structured API in less than a minute with no coding or training required. According to the site, the tool can be and is used for everything from personal data projects to app creation, data journalism, database population, competitive analysis and much more.", user: importio_founder, problem: importio_problem)

# homies_solution = Solution.create!(title: "Homies", description: "To build a Web App that keeps track of all bills, chores and events in the house.", user: homies_founder, problem: homies_problem)

# weather_solution = Solution.create!(title: "Weather or not", description: "An application that calls publicly available weather forecasts and filters them based on your availability before sending you a notification.", user: weather_founder, problem: weather_problem)

# recyclebank_solution = Solution.create!(title: "Gamify the process!", description: "Use gamification methods such as points for making progress, rewards in the form of discounts on goods and the competitive element to encourage people to recycle waste.", user: recyclebank_founder, problem: recyclebank_problem)

# treeplanet_solution = Solution.create!(title: "A mobile game", description: "A mobile game about trees with in-game purchases and advertising revenues being spent on planting trees in real life.", user: treeplanet_founder, problem: treeplanet_problem)

# solarity_solution = Solution.create!(title: "Smaller instalations", description: "Small- and medium-sizesd photovoltaic installations on rooftops are faster and easier to install. This way companies can immediately benefit from using renewable energy source.", user: solarity_founder, problem: solarity_problem)

# canva_solution = Solution.create!(title: "Simple adobe suite/ DIY designs", description: "Imagine an easy-to-use web-based design tool with ready made graphics and cool designs so that people don't need to spend thousands on hiring a professional graphic designer for a social media post. Say bye to learning how to use complex vector lines!", user: canva_founder, problem: canva_problem)

# spanx_solution = Solution.create!(title: "Elastic undergarment", description: "An undergarment made out of an elastic material that basically tightens and then smooths everything around your butt and thighs. Regular underwear left a panty line. The thong isn't a great solution. It also left marks that you could see. And then, the shape wear was like the girdles were so thick and overdone.", user: spanx_founder, problem: spanx_problem)

# puts 'Creating pitches...'

# # PITCHES

# airbnb_pitch = Pitch.create!(title: "Airbnb", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", link: "//www.slideshare.net/slideshow/embed_code/key/CjBW6nNhL18X7S", user: airbnb_founder, solution: airbnb_solution)

# uber_pitch = Pitch.create!(title: "Uber", description: "Next-generation car service. A fast & efficient on-demand car service for professionals in American cities. It provides a 1-click car service", link: "//www.slideshare.net/slideshow/embed_code/key/L4ARVYM14a51lq" , user: uber_founder, solution: uber_solution)

# canva_pitch = Pitch.create!(title: "Canva", description: "Canva is a graphic design platform that allows users to create social media graphics, presentations, posters, documents and other visual content. Users can choose from many professional designed templates, and edit the designs and upload their own photos through a drag and drop interface.", link: "https://www.canva.com/design/DACscjV6_AI/view?utm_content=DACscjV6_AI&utm_campaign=designshare&utm_medium=embeds&utm_source=link" , user: canva_founder, solution: canva_solution)

# spanx_pitch = Pitch.create!(title: "Spanx", description: "An undergarment made out of an elastic material that basically tightens and then smooths everything around your butt and thighs", link: "https://www.youtube.com/embed/o4IIkCtqDuU" , user: spanx_founder, solution: spanx_solution)

# homies_pitch = Pitch.create!(title: "Homies", description: "A fun house share organiser that helps you and your homies to stay ahead of your bills, chores and in-house events!", link: "https://docs.google.com/presentation/d/e/2PACX-1vSkmWdJfT_NPmGto_kGrUDMFp1p5Fis88mAqvZcV62GARoDgb_CFLD_O_ovy0rcjtFxpG4brDmZR5Xo/pub?start=false&loop=false&delayms=60000" , user: homies_founder, solution: homies_solution)

# weather_pitch = Pitch.create!(title: "Weather or Not", description: "Make the most of your hour outside", link: "https://docs.google.com/presentation/d/1XV5qV-oqM21_FTDLV22oWVTTSXq8VT7lp1C7erXhQK8/preview#slide=id.g9090ddd909_0_52" , user: weather_founder, solution: weather_solution)

# aussie_pitch = Pitch.create!(title: "Proudly Aussie", description: "Buy Australian Made, help your local community", link: "https://docs.google.com/presentation/d/1XV5qV-oqM21_FTDLV22oWVTTSXq8VT7lp1C7erXhQK8/preview#slide=id.g9090ddd909_0_52" , user: aussie_founder, solution: aussie_solution)


# puts "Created #{User.all.count} users, #{Problem.all.count} problems, #{Solution.all.count} solutions, #{Pitch.all.count} pitches!"

# # VOTES

# User.all.each do |user|
#     Vote.create!(votable: Problem.all.sample, user: user)
#     Vote.create!(votable: Solution.all.sample, user: user)
#     Vote.create!(votable: Pitch.all.sample, user: user)
# end
