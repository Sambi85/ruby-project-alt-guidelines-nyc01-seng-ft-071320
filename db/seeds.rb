require "pry"
User.delete_all
Restaurant.delete_all
Review.delete_all

user1 = User.create(name: "Jenny")
user2 = User.create(name: "Sam")
user3 = User.create(name: "Alex")
user4 = User.create(name: "Vince")
user5 = User.create(name: Faker::Name.name)
user6 = User.create(name: Faker::Name.name)
user7 = User.create(name: Faker::Name.name)
user8 = User.create(name: Faker::Name.name)

rest1 = Restaurant.create(name: "Millers ale house", style: "grill")
rest2 = Restaurant.create(name: "McDonalds", style: "fast food")
rest3 = Restaurant.create(name: "TGI Fridays", style: "bar")
rest4 = Restaurant.create(name: "Applebees", style: "amexfood")
rest5 = Restaurant.create(name: Faker::Company.name, style: Faker::Restaurant.type)
rest6 = Restaurant.create(name: Faker::Company.name, style: Faker::Restaurant.type)
rest7 = Restaurant.create(name: Faker::Company.name, style: Faker::Restaurant.type)
rest8 = Restaurant.create(name: Faker::Company.name, style: Faker::Restaurant.type)

rev1 = Review.create(title: "great beer", star_rating: 4, restaurant_id: rest1.id, user_id: user1.id)
rev2 = Review.create(title: "bad burgers", star_rating: 3, restaurant_id: rest2.id, user_id: user2.id)
rev3 = Review.create(title: "thanks for smoking", star_rating: 2, restaurant_id: rest3.id, user_id: user3.id)
rev4 = Review.create(title: "bad waiter", star_rating: 1, restaurant_id: rest4.id, user_id: user4.id)
rev5 = Review.create(title: "Love it", star_rating: Faker::Number.between(from: 1, to: 5), restaurant_id: rest5.id, user_id: user5.id)
rev6 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5), restaurant_id: rest6.id, user_id: user6.id)
rev7 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5), restaurant_id: rest7.id, user_id: user7.id)
rev8 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5), restaurant_id: rest8.id, user_id: user8.id)

binding.pry


#https://github.com/faker-ruby/faker#generators << Faker generators