

class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def self.login  ### Create an account
      puts  "Please login or tell us your name:"
                  name = gets.chomp
                  user = User.find_by(name: name)
                  if user
                    puts "Welcome Back!!!"
                  else
                    puts "We couldn't find you, please create an account!"
                    puts "Please enter your name:"
                    name_create= gets.chomp
                    User.create(name: name_create)
                  end
                  user
                  
    end

     def find_star_rating(star_rating)   ### Passes
          Review.find_by(star_rating: star_rating)
     end
    
     def update_review
    
          self.reviews.each do |review|
            puts "#{review.title} - #{review.restaurant.name}"
        end
            puts "Let's re-write that review, please enter the name:"
               name_input = STDIN.gets.chomp
               review = self.find_review(name_input)
                review
              
              puts "You said #{review.restaurant.name}: '#{review.title}''"
              puts "Would you like to change this? (y/n)"
              puts "\n"
              change_title = STDIN.gets.chomp

            case change_title
            when "y" || "Y"
              review.update(title: change_title)
                puts "Your review has been changed"
            when "n" || "N"
                puts "Not a problem, will return you to the main menu!"
            end
    end

    

      def self.create_review(title,star_rating,restaurant) ### Passed
        review = Review.create(title: title, star_rating: star_rating, restaurant_id: restaurant.id, user_id: self.id)
      end

    def self.find_review(name)
     res = Restaurant.find_by(name: name)
     rev = Review.find_by(restaurant_id: res.id)
      puts "Review Title: #{rev.title} - Star Rating: #{rev.star_rating}"
    end
 
    # def remove_review(title) ### Passed
    #    rev = Review.find_by(title: title)
    #     rev.delete
    # end 

end