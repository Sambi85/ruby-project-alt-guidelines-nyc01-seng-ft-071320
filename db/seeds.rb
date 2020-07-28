User.delete_all
Restaurant.delete_all
Review.delete_all

user1 = User.create(name: "Jenny")
user2 = User.create(name: "Sam")
user3 = User.create(name: "Alex")
user4 = User.create(name: "Vince")

rest1 = Restaurant.create(name: "Millers ale house", style: "grill")
rest2 = Restaurant.create(name: "McDonalds", style: "fast food")
rest3 = Restaurant.create(name: "TGI Fridays", style: "bar")
rest4 = Restaurant.create(name: "Applebees", style: "amexfood")

rev1 = Review.create(title: "great beer", star_rating: 4, restaurant_id: 1, user_id: 1)
rev2 = Review.create(title: "bad burgers", star_rating: 3, restaurant_id: 2, user_id: 2)
rev3 = Review.create(title: "thanks for smoking", star_rating: 2, restaurant_id: 3, user_id: 3)
rev4 = Review.create(title: "bad waiter", star_rating: 1, restaurant_id: 4, user_id: 4)


### Shall we use Faker Gem ???
# Example of syntax:
# User.create(name: Faker::Name.name)
# Restaurant.create(name: Faker::Company.name)
# Review.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id, content: Faker::Hacker.say_something_smart)