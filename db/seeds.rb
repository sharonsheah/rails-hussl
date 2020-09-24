require 'open-uri'

puts 'Wiping data...'

Bookmark.destroy_all
Comment.destroy_all
Message.destroy_all
Collaboration.destroy_all
Chatroom.destroy_all
Pitch.destroy_all
Solution.destroy_all
Problem.destroy_all
Vote.destroy_all
User.destroy_all
Chatroom.destroy_all

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

maite_user = User.create!(
            first_name: "Maite",
            last_name: "Brown",
            email: "maite@user.com", 
            password: "password"
            )

annmarie_user = User.create!(
              first_name: "AnnMarie",
              last_name: "De Silva",
              email: "annmarie@user.com", 
              password: "password"
              )
              file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQFiE_WLX4sgAA/profile-displayphoto-shrink_400_400/0?e=1606348800&v=beta&t=o2W4NOfdqiA3mhyQ5TOGdS-it832t6pMByFoHY1q5YE")
              annmarie_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 

rae_user = User.create!(
          first_name: "Rae",
          last_name: "Ho",
          email: "rae@user.com", 
          password: "password"
          )  


25.times do
  fake_male_user = User.create!(first_name: Faker::Name.male_first_name, 
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email, 
  password: "password"
  )
  file = URI.open("https://randomuser.me/api/portraits/thumb/men/1.jpg")
  fake_male_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 
end

25.times do
  fake_female_user = User.create!(first_name: Faker::Name.female_first_name, 
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email, 
  password: "password"
  )
  file = URI.open("https://randomuser.me/api/portraits/thumb/women/1.jpg")
  fake_female_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 
end

#FAMOUS USERS

plantlady_user = User.create!(
                first_name: "Crazyplantlady92",
                last_name: "Sy",
                email: "plantlady@user.com", 
                password: "password"
                )
                file = URI.open("https://www.plantmaid.com/wp-content/uploads/2019/12/Crazy-Plant-Lady.jpg?e7fb5a&e7fb5a")
                plantlady_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 

paal_user = User.create!(
          first_name: "Paal",
          last_name: "Ringstaad",
          email: "paal@user.com", 
          password: "password"
          )
          file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQGSUcgEm2YIOg/profile-displayphoto-shrink_400_400/0?e=1606348800&v=beta&t=oIPNDVN9qx08i08HCcIJy6RQ61WA0IcvOG8dTxinuRk")
          paal_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 

eric_user = User.create!(
          first_name: "Eric",
          last_name: "Chen",
          email: "eric@user.com", 
          password: "password"
          )
          file = URI.open("https://ca.slack-edge.com/T02NE0241-U016XM5SB2B-83fbaa6522d6-512")
          eric_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg') 

sy_user = User.create!(
          first_name: "Sy",
          last_name: "Rashid",
          email: "sy@user.com", 
          password: "password",
          description: "My specialties: leadership, web development, full stack development, product management, Ruby, Rails, HTML, CSS, brand launches, design innovation, lean design, brand marketing, talent acquisition, start up strategy, and venture capital. Nico's bff 👨🏾‍🤝‍👨🏻"
          )
          file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQGAWvRcji7HZw/profile-displayphoto-shrink_400_400/0?e=1606348800&v=beta&t=oo4aKSYDpPpI5gtnOtl9xhRx7gOn-ZWZGxmM0dx7n3c")
          sy_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')  

nico_user = User.create!(
          first_name: "Nico",
          last_name: "Proto",
          email: "nico@user.com", 
          password: "password"
          )   
          file = URI.open("https://media-exp1.licdn.com/dms/image/C5603AQEHw0rXyVqRvw/profile-displayphoto-shrink_400_400/0?e=1606348800&v=beta&t=q-cobcLPRRA5LFKDsAt2njg9hmprXN7uj_xi7f3oY3Y")
          nico_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')     

sheila_user = User.create!(
            first_name: "Sheila",
            last_name: "Leveille",
            email: "sheila@user.com", 
            password: "password"
            )  
            file = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQFI7W3n_kawIg/profile-displayphoto-shrink_400_400/0?e=1606348800&v=beta&t=PZtMwDhoH0wZvQNQATSzm1pTvaIgi4bDPzEgyXu7_Ew")
            sheila_user.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

tesla_founder = User.create!(
                first_name: "Elon", 
                last_name: "Musk",
                email: "elon@user.com",
                password: "password",
                description: "Elon co-founded Tesla and continues to oversee the company's product strategy -- including the design, engineering and manufacturing of more and more affordable electric vehicles for mainstream consumers. As Chairman and Product Architect, he helped design the ground-breaking Tesla Roadster, for which he won an Index and a Global Green award, the latter presented by Mikhail Gorbachev. In October 2008, he took on the additional responsibility of CEO,overseeing daily operations as the company was ramping up Roadster production and accelerating the development of its second vehicle, the Model S."
                )
                file = URI.open("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg")
                tesla_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')


airbnb_founder = User.create!(
                first_name: "Brian", 
                last_name: "Chesky",
                email: "brian@user.com",
                password: "password",
                description: "Brian is the Co-Founder and Chief Executive Officer at Airbnb. Brian drives the company's vision, strategy and growth as it provides interesting and unique ways for people to travel and changes the lives of its community. Under Brian's leadership, Airbnb stands at the forefront of the sharing economy and has expanded to over 1,000,000 listings in 190 countries."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/brian_chesky_ab5qna.jpg")
                airbnb_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

uber_founder = User.create!(
                first_name: "Travis", 
                last_name: "Kalanick",
                email: "travis@user.com", 
                password: "password",
                description: "Travis Kalanick is a CEO at City Storage Systems. He is a co-founder and the former CEO of Uber Technologies Inc. Travis Kalanick is an entrepreneur in the areas of consumer internet, transportation, and enterprise content delivery. His most recent company, Uber, an on-demand black car service, seeks to be “Everyone’s Private Driver” by bringing disruptive technology and business innovation to urban transportation challenges.

                Prior to Uber, Travis founded Red Swoosh , an enterprise content delivery company that he sold to Akamai Technologies in 2007. Prior companies include Scour, the world's first peer-to-peer search engine where Kalanick also attained the dubious distinction of having been sued for $250 billion. In addition, Kalanick has been an active angel investor."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/travis_kalanick_k91mjw.jpg")
                uber_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

facebook_founder = User.create!(
                first_name: "Mark", 
                last_name: "Zuckerberg",
                email: "mark@user.com", 
                password: "password",
                description: "Mark Zuckerberg is the founder and CEO of Facebook, which he started in his college dorm room in 2004 with roomates Dustin Moskovitz and Chris Hughes and from New York. Zuckerberg is responsible for setting the overall direction and product strategy for the company. He leads the design of Facebook's service and development of its core technology and infrastructure. Mark studied computer science at Harvard University before moving the company to Palo Alto, California."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394323/mark_zuckerberg_yrbimu.jpg")
                facebook_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

importio_founder = User.create!(
                    first_name: "Matthew", 
                    last_name: "Painter",
                    email: "matthew@user.com", 
                    password: "password",
                    description: "Matt is the brains behind the powerful functionality in the import.io tool. His innovative ideas have helped import.io create a tool that allows anyone to tap into the huge potential of data on the web. Matt’s primary responsibility is to oversee the technical strategy and product roadmap of the company. As CTO, he is dedicated to building a team of world-class engineers to keep import.io at the forefront of the industry. Prior to co-founding import.io, Matt was a consultant for Sapient and worked as Senior Engineer and Product Architect for Yahoo."
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/matthew_painter_t5mt1n.jpg")
                    importio_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

recyclebank_founder = User.create!(
                    first_name: "Ron",
                    last_name: "Gonen",
                    email: "ron@user.com",
                    password: "password",
                    description: "Ron is the CEO of Closed Loop Partners, a New York based investment firm comprised of venture capital, growth equity, private equity, project finance and an innovation center focused on building the circular economy. Investors include many of the world’s largest retailers and consumer goods companies as well as family offices interested in investments that provide strong financial returns and tangible social impact."
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/ron_gonen_bxihto.jpg")
                    recyclebank_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

treeplanet_founder = User.create!(
                    first_name: "Kim", 
                    last_name: "Hyung-soo",
                    email: "kim@user.com", 
                    password: "password",
                    description: "Kim wants to help 100 million people each plant a tree to help them feel more responsible for their planet. Kim, a longtime nature activist, cofounded Tree Planet in 2010 to solve environmental and social problems by building forests. They plant trees through revenue gleaned via crowdfunding and its mobile game. The startup has planted around 900,000 trees for more than 250 forests in 12 countries and launched a crowd-farming project in Nepal to sell farmers coffee directly to the Korean market."
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/kim_hyung_soo_jj8wzo.jpg")
                    treeplanet_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

solarity_founder = User.create!(
                    first_name: "Horacio", 
                    last_name: "Melo", 
                    email: "horacio@user.com", 
                    password: "password",
                    description: "Horacio founded Solarity that revolutionized the delivery of solar energy to homes and businesses across Latin American. Solarity designs, finances, installs and operates small and medium size photovoltaic installations. The company sell clean electricity cheaper than the utility. Solarity finance the equipments, generating savings from day one in your electricity bill. Key customers are commercial/industrial clients who pays high electric rates and have mid/big size rooftops where solar systems can be installed."
                    )
                    file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/horacio_melo_xvrbaj.jpg")
                    solarity_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

aussie_founder = User.create!(
                first_name: "Mathieu", 
                last_name: "Longe",
                email: "mathieu@user.com", 
                password: "password",
                description: "Mathieu is a founder of Aussie, a free app that connects you to the local producer: the producer is in the spotlight."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/mathieu_longe_ygpsvu.jpg")
                aussie_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

homies_founder = User.create!(
                first_name: "Sergey", 
                last_name: "Osipov",
                email: 'sergey@user.com', 
                password: "password",
                description: "Sergey is the founder of fun house share organiser that helps you and your homies to stay ahead of your bills, chores and in-house events!"
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394322/sergey_osipov_yfpqvh.jpg")
                homies_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

weather_founder = User.create!(
                first_name: "Sam", 
                last_name: "Cheney",
                email: "sam@user.com", 
                password: "password",
                description: "Sam's the founder of Weather or Not application that calls publicly available weather forecasts and filters them based on your availability before sending you a notification."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600394321/sam_cheney_xjvt2a.jpg")
                weather_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

canva_founder = User.create!(
                first_name: "Melanie", 
                last_name: "Perkins",
                email: "melanie@user.com",
                password: "password",
                description: "Melanie Perkins is an Australian technology entrepreneur. She is known as the CEO and co-founder of Canva, an online graphic design and publishing tool. Melanie is one of the youngest female CEOs to be leading a tech startup valued at over a billion dollars."
                )
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600396202/melanie_perkins_qz0d1v.jpg")
                canva_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')

spanx_founder = User.create!(
                first_name: "Sara", 
                last_name: "Blakely",
                email: "sara@user.com", 
                password: "password",
                description: "Sara Blakely is an American billionaire businesswoman, and founder of Spanx, an American intimate apparel company with pants and leggings, founded in Atlanta, Georgia. In 2012, Blakely was named in Time magazine's Time 100 annual list of the 100 most influential people in the world. As of 2014, she is listed as the 93rd most powerful woman in the world by Forbes.")
                file = URI.open("https://res.cloudinary.com/docykmjwf/image/upload/v1600398527/sara_blakely_do9tle.jpg")
                spanx_founder.photo.attach(io: file, filename: 'profilepic.jpg', content_type: 'image/jpg')


puts 'Creating problems...'
 
# PROBLEMS
# ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Government", "Unspecified"]


airbnb_problem = Problem.create!(title: "Hotels are too expensive", description: "Price is important concern for customers booking travel online. Hotels leave you disconnected from the city and its culture. No easy way exists to book a room with a local or become a host.", user: User.all.sample, category: "Consumer")

plant_problem = Problem.create(title: "My plants keep dying on me", description: "I can never figure out how much water to give them. What can I do?", user: plantlady_user, category: "Consumer")

arm_problem = Problem.create!(title: "My left arm is darker than my right", description: "How can I even out my tan?", user: annmarie_user, category: "Unspecified")

facebook_problem = Problem.create!(title: "Can't remember my high school mates faces", description: "I want to keep in touch with my high school friends and watch the rest of my cohort go bald or age gracefully. It's so difficult to keep in touch. Can someone think of a solution for this??", user: User.all.sample, category: "Software & Services")

aussie_problem = Problem.create!(title: "Products made in STRAYAAA", description: "I only want to buy products made in australia by australians for australians. Products made in Australia can be very hard to source (not accessible and take time). No clear supply and hard to interact online with local producers.", user: User.all.sample, category: "Consumer")

heroku_problem = Problem.create!(title: "Heroku keeps ruining my layout", description: "There has to be a better way.", user: User.all.sample, category: "Software & Services")

uber_problem = Problem.create!(title: "Taxis are for boomers", description: "Most use aging and inefficient technology like radio dispatching. Always the same car models. Hailing is done by hand or phone(no GPS coordination between driver/passenger).", user: User.all.sample, category:"Software & Services")

importio_problem = Problem.create!(title: "Scraping data feels like mining", description: "Web pages are full of data, but harvesting that data is often manual and always time-consuming.", user: User.all.sample, category:"Software & Services")

homies_problem = Problem.create!(title: "My flatmate owes me money and doesn't clean the bathroom", description: "There is no centralised digital system to manage all house hold needs.", user: User.all.sample, category: "Software & Services")

weather_problem = Problem.create!(title: "Everytime I go out it starts raining", description: "The weather report is too general, and not actionable based on an individual's schedule.", user: User.all.sample, category: "Unspecified")

recyclebank_problem = Problem.create!(title: "Recycling household waste", description: "Recycling household waste is important but it’s often hard for people to stay committed to this goal.", user: User.all.sample, category: "Software & Services")

treeplanet_problem = Problem.create!(title: "Lack of commitment to planting new trees", description: "Deforestation is responsible for 15% of global greenhouse gas emissions. Planting new trees and whole forests is important for maintaining the natural balance but not so many people are taking action.", user: User.all.sample, category: "Education")

solarity_problem = Problem.create!(title: "Solar energy is not popular enough", description: "Usually solar installations often are built quicker than a transmission network. Thus many companies and individuals can’t benefit from country’s solar energy potential.", user: User.all.sample, category: "Real Estate & Construction")

uaroads_problem = Problem.create!(title: "Lack of quality roads", description: "The quality of Ukrainian roads is nothing but satisfactory. As many as 95% of them need a repair but government lacks money for monitoring their quality.", user: User.all.sample, category: "Real Estate & Construction")

relectrify_problem = Problem.create!(title: "Short life of rechargeable batteries", description: "Rechargeable batteries (especially those used in mobile devices) turn into waste quite quickly but the majority of their storage performance is still out there.", user: User.all.sample, category: "Consumer")

mayapedal_problem = Problem.create!(title: "Access to electricity in Guatemala", description: "The majority of rural communities in Guatemala are living below the poverty line with most work are still being done manually instead of powered by electricity.", user: User.all.sample, category: "Consumer")

zerogachis_problem = Problem.create!(title: "Supermarkets throw away food", description: "Supermarkets often have to throw away food due to expiration.", user: User.all.sample, category: "Consumer")

canva_problem = Problem.create!(title: "Designers are so expensive", description: "I run a small business and Adobe is too expensive and too difficult to use. There has to be q more affordable way to get quick graphics for my marketing! I don't know how to design too and graphic designers are too expensive!", user: User.all.sample, category: "Software & Services")

spanx_problem = Problem.create!(title: "Undergarment problems", description: "I had spent money on a pair of cream pants. I spent $98 dollars on them, which, for me, was a lot of money. And they just hung in my closet unworn because every time I would go to wear them, you could see the undergarment.", user: User.all.sample, category: "Consumer")

superhero_problem = Problem.create(title: "My batman identity has been compromised", description: "I am wanted by the Russian terrorists. Need to get out of the country into Melbourne. Looking for reliable roommates to share a house with.", user: User.all.sample, category: "Consumer")

dangov_problem = Problem.create(title: "Sick of this Melb lockdown", description: "Dan-when can we go out?", user: User.all.sample, category: "Government")

juul_problem = Problem.create(title: "Cigarette alternatives", description: "Cigarettes cause cancer, but I still want to smoke, and there’s no way to inhale nicotine without carcinogens.", user: User.all.sample, category: "Healthcare")

vaccine_problem = Problem.create(title: "Coronavirus vaccine that actually works?", description: "Can someone come out with a vaccine already, I can pay good money for it.", user: User.all.sample, category: "Healthcare")

stripe_problem = Problem.create(title: "Setting up online payments is just such a hassle.", description: "It’s too hard for online vendors to set up payments.", user: User.all.sample, category: "Financial Technology")

ridesharing_problem = Problem.create!(title: "UBER is destroying the planet", description: "Ride-hailing trips today result in an estimated 69 percent more climate pollution on average than the trips they displace. There's gotta be a better way.", user: tesla_founder, category: "Software & Services")

puts 'Creating solutions...'

# SOLUTIONS

airbnb_solution = Solution.create!(title: "Renting out private owned flats", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", user: airbnb_founder, problem: airbnb_problem)

aussie_solution = Solution.create!(title: "Proudly Aussie", description: "A free application that connect you to the local producer: the producer is in the spotlight - UX optimized for businesses and customers.", user: aussie_founder, problem: aussie_problem)

uber_solution = Solution.create!(title: "Cab booking app", description: "On demand car service for professionals, convenience of a cab with the experience of a professional chauffeur. Automate dispatch to reduce wait time and guaranteed pickup.", user: uber_founder, problem: uber_problem)

grab_solution = Solution.create!(title: "Ride sharing for SEA", description: "A multilingual taxi booking app that auto-detects customers' current location. It is very important that Southeast Asian countries' transportation sector are often chaotic and unorganised. We need to build something that can fit into the SEA market. A final established price is essential in SEA.", user: User.all.sample, problem: uber_problem)

didi_solution = Solution.create!(title: "Focus on drivers' happiness", description: "A ride sharing app that focuses on giving driver's satisfaction and benefits by providing insurance and subsidies.", user: User.all.sample, problem: uber_problem)

importio_solution = Solution.create!(title: "User-friendly dev tool", description: "A dev tool that allows you to scrape data from websites and transform it into an organized table or structured API in less than a minute with no coding or training required. According to the site, the tool can be and is used for everything from personal data projects to app creation, data journalism, database population, competitive analysis and much more.", user: importio_founder, problem: importio_problem)

homies_solution = Solution.create!(title: "Homies", description: "To build a Web App that keeps track of all bills, chores and events in the house.", user: homies_founder, problem: homies_problem)

weather_solution = Solution.create!(title: "Weather or not", description: "An application that calls publicly available weather forecasts and filters them based on your availability before sending you a notification.", user: weather_founder, problem: weather_problem)

recyclebank_solution = Solution.create!(title: "Gamify the process!", description: "Use gamification methods such as points for making progress, rewards in the form of discounts on goods and the competitive element to encourage people to recycle waste.", user: recyclebank_founder, problem: recyclebank_problem)

treeplanet_solution = Solution.create!(title: "A mobile game", description: "A mobile game about trees with in-game purchases and advertising revenues being spent on planting trees in real life.", user: treeplanet_founder, problem: treeplanet_problem)

solarity_solution = Solution.create!(title: "Smaller instalations", description: "Small- and medium-sizesd photovoltaic installations on rooftops are faster and easier to install. This way companies can immediately benefit from using renewable energy source.", user: solarity_founder, problem: solarity_problem)

canva_solution = Solution.create!(title: "Simple adobe suite/ DIY designs", description: "Imagine an easy-to-use web-based design tool with ready made graphics and cool designs so that people don't need to spend thousands on hiring a professional graphic designer for a social media post. Say bye to learning how to use complex vector lines!", user: canva_founder, problem: canva_problem)

spanx_solution = Solution.create!(title: "Elastic undergarment", description: "An undergarment made out of an elastic material that basically tightens and then smooths everything around your butt and thighs. Regular underwear left a panty line. The thong isn't a great solution. It also left marks that you could see. And then, the shape wear was like the girdles were so thick and overdone.", user: spanx_founder, problem: spanx_problem)

puts 'Creating pitches...'

# PITCHES

airbnb_pitch = Pitch.create!(title: "Airbnb", description: "A web platform where users can rent out their space to host travellers to: save money, make money, share culture.", link: "//www.slideshare.net/slideshow/embed_code/key/CjBW6nNhL18X7S", user: airbnb_founder, solution: airbnb_solution)

uber_pitch = Pitch.create!(title: "Uber", description: "Next-generation car service. A fast & efficient on-demand car service for professionals in American cities. It provides a 1-click car service", link: "//www.slideshare.net/slideshow/embed_code/key/L4ARVYM14a51lq" , user: uber_founder, solution: uber_solution)

canva_pitch = Pitch.create!(title: "Canva", description: "Canva is a graphic design platform that allows users to create social media graphics, presentations, posters, documents and other visual content. Users can choose from many professional designed templates, and edit the designs and upload their own photos through a drag and drop interface.", link: "https://www.canva.com/design/DACscjV6_AI/view?utm_content=DACscjV6_AI&utm_campaign=designshare&utm_medium=embeds&utm_source=link" , user: canva_founder, solution: canva_solution)

spanx_pitch = Pitch.create!(title: "Spanx", description: "An undergarment made out of an elastic material that basically tightens and then smooths everything around your butt and thighs", link: "https://www.youtube.com/embed/o4IIkCtqDuU" , user: spanx_founder, solution: spanx_solution)

homies_pitch = Pitch.create!(title: "Homies", description: "A fun house share organiser that helps you and your homies to stay ahead of your bills, chores and in-house events!", link: "https://docs.google.com/presentation/d/e/2PACX-1vSkmWdJfT_NPmGto_kGrUDMFp1p5Fis88mAqvZcV62GARoDgb_CFLD_O_ovy0rcjtFxpG4brDmZR5Xo/pub?start=false&loop=false&delayms=60000" , user: homies_founder, solution: homies_solution)

weather_pitch = Pitch.create!(title: "Weather or Not", description: "Make the most of your hour outside", link: "https://docs.google.com/presentation/d/1XV5qV-oqM21_FTDLV22oWVTTSXq8VT7lp1C7erXhQK8/preview#slide=id.g9090ddd909_0_52" , user: weather_founder, solution: weather_solution)

aussie_pitch = Pitch.create!(title: "Proudly Aussie", description: "Buy Australian Made, help your local community", link: "https://docs.google.com/presentation/d/1XV5qV-oqM21_FTDLV22oWVTTSXq8VT7lp1C7erXhQK8/preview#slide=id.g9090ddd909_0_52" , user: aussie_founder, solution: aussie_solution)


puts "Created #{User.all.count} users, #{Problem.all.count} problems, #{Solution.all.count} solutions, #{Pitch.all.count} pitches!"

# VOTES

User.all.each do |user|
    Vote.create!(votable: Problem.all.sample, user: user)
    Vote.create!(votable: Solution.all.sample, user: user)
    Vote.create!(votable: Pitch.all.sample, user: user)
end

Solution.all.each do |solution|
  solution.chatroom = Chatroom.create!(name: solution.title, solution: solution)
end

User.all.each do |user|
  Collaboration.create!(user: user, solution: Solution.all.sample, status: ["Pending", "Accepted", "Rejected"].sample)
  3.times do
    Message.create(user: user, content: "This is a sample message", chatroom: Chatroom.all.sample)
  end  
end

# COMMENTS
  #airbnb end-to-end
  Comment.create(commentable: ridesharing_problem, user: sy_user, content: "It's about time someone gets cracking on this.")
  Comment.create(commentable: ridesharing_problem, user: sy_user, content: "@ElonMusk, can you do him better?")
  Comment.create(commentable: ridesharing_problem, user: nico_user, content: "Walking. That works too. 🚶🏻‍♂️🚶🏻‍♂️")
  Comment.create(commentable: ridesharing_problem, user: uber_founder, content: "Would be interesting to see what everybody comes up with 👊🏼")