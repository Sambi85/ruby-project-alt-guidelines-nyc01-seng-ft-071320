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

rev1 = Review.create(title: "great beer", star_rating: 4, restaurant_id: 1, user_id: 1)
rev2 = Review.create(title: "bad burgers", star_rating: 3, restaurant_id: 2, user_id: 2)
rev3 = Review.create(title: "thanks for smoking", star_rating: 2, restaurant_id: 3, user_id: 3)
rev4 = Review.create(title: "bad waiter", star_rating: 1, restaurant_id: 4, user_id: 4)
rev5 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5) ,restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
rev6 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5) ,restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
rev7 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5) ,restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
rev8 = Review.create(title: Faker::Hacker.say_something_smart, star_rating: Faker::Number.between(from: 1, to: 5) ,restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)




#https://github.com/faker-ruby/faker#generators << Faker generators