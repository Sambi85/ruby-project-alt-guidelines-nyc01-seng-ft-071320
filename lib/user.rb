

class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def self.login  ### Create an account Passes 
      puts  "Please login or tell us your name:"
                  name = gets.chomp
                  user = User.find_by(name: name)
                  if user
                    puts "Welcome Back!!!"
                    user
                  else
                    puts "We couldn't find you, please create an account!"
                    puts "Please enter your name:"
                    name_create = gets.chomp
                    new_user = User.create(name: name_create)
                    new_user
                   end                  
    end
#----------------------------------------------------------------------------------------------------#
    def find_star_rating(star_rating)   ### Passes
         Review.find_by(star_rating: star_rating)
    end
#----------------------------------------------------------------------------------------------------#    
    def create_review(title, star_rating, restaurant) 
        review = Review.create(title: title, star_rating: star_rating, restaurant_id: restaurant.id, user_id: self.id)
    end
#----------------------------------------------------------------------------------------------------#
 
    def self.find_review(name)
     res = Restaurant.find_by(name: name)
     rev = Review.find_by(restaurant_id: res.id)
        puts "\n"
        puts "\n"
        puts "Review Title: #{rev.title} - Star Rating: #{rev.star_rating}"
    end
#----------------------------------------------------------------------------------------------------#
    
def remove_review
    self.reviews.each_with_index do |review, index|
        puts " #{index+1}:  #{review.title} - #{review.restaurant.name}"
    end  
        puts "Choose a review, you'd like to delete:"
                num_input = STDIN.gets.chomp.to_i
                  review = self.reviews[num_input-1]
                  review.delete
                  puts "\n"
                  puts "your review has been deleted!!!"
end 

#----------------------------------------------------------------------------------------------------#

     def update_review
    
          self.reviews.each_with_index do |review, index|
            puts " #{index+1}:  #{review.title} - #{review.restaurant.name}"
        end
            puts "Choose a review you'd like to edit, please enter a number:"
               num_input = STDIN.gets.chomp.to_i
                review = self.reviews[num_input-1]
              
              puts "You said #{review.restaurant.name}: '#{review.title}''"
              puts "Would you like to change this? (y/n)"
              puts "\n"
              change_rev = STDIN.gets.chomp

            case change_rev
            when "y" || "Y"
              puts "What's your new title?"
              new_title = STDIN.gets.chomp
              review.update(title: new_title)
              puts "What's your new star rating?"
              new_stars = STDIN.gets.chomp.to_i
              review.update(star_rating: new_stars)
                puts "Your new review: '#{new_title}' has been updated"
                puts "Your current star rating: #{new_stars} !!!"
           
            when "n" || "N"
                puts "Not a problem, will return you to the main menu!"
            end
    end


end