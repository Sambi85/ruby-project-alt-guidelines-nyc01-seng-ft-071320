Module One Final Project 
========================

name: Hot Waffles !
concept: a personal dining companion log for your friends, family & associates

Models we used for this project:
1.  User has many reviews
2.  User has many Restaurants
3.  UserReview belongs to User
4.  Review belongs to Restaurant
5.  Restaurant has many reviews
6.  Restaurant has many Users


Our User Story:
1. As a user, i can create an account (create)
2. As a user, i can create a review(create)
3. As a user, i can read a reviews from other users (read)
4. As a user, i can update my review(update) 
5. As a user, i can delete one of my reviews (delete)

Tables:
1. Restaurant has :name/string, :type/string
2. Review has :title/string, :star_rating/integer,  :restaurant_id/integer,  :user_id/integer
3. User has :name/string


#instructions(Mac os)
1. git fork 
2. git clone with SSH key
3. git clone to your favorite directory
4. Open in your choice of code editor (We used Vs code: 'code .')
5. make sure your in Mod1_project_restaurants_reviews folder
6. bundle install for all of your gems
7. run app: ruby bin/run.rb

Gems we used:
gem "activerecord", '~> 5.2'
gem "sinatra-activerecord"
gem "sqlite3", '~> 1.3.6'
gem "pry"
gem "require_all"
gem "faker"
gem "colorize"

 