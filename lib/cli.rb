require "pry"
class Cli
        
    attr_accessor :user

    def initialize
        @user = nil 
    end 
    
    def run

        greet
        user = User.login
        display_main_menu 
    end
    
    
    def greet
        puts "\n"
        puts "Welcome to Hot Waffles, the best place to find the hottest restaurants in your area!"
        puts "\n"
    end

    def display_main_menu
        puts"\n"
        puts "Please select an option by number:"
        puts "1. Please enter a star rating, for a list of restaurants ? (star rating of 1-5)"
        star_rating = gets.chomp
        User.find_star_rating(star_rating)


        # Ask user if they wanna see highest rated restaurants
        # in terminal bring up highest rated 
        # Would you like to see the 
        #puts "Would you like to write a review ?"
        # if 1 proceed to writing a review, if 2 
            # write_input = gets.chomp
            # puts "Would you like to update a review ?  (press 3)"
            # update_input = gets.chomp
            # puts "Would you like to delete a review?  (press 4)"
            # delete_input = gets.chomp

          
                # puts "Please enter a star rating for a restaurant:"
                # star_rating = gets.chomp 
                #  
            
        end






    def change_review(user)
        user.update_review
    end

end

## Use instance methods / instance variables 
# In run file create new instance cli = Cli.new   cli.run
# As a user, i can create an account/ recognize existing user (create)   PASSED
# As a user, i can create a review(create) 
# As a user, i can read a reviews from other users (read)
# As a user, i can update my review(update) what user ? current user logged in ! instance var
# As a user, i can delete one of my reviews (delete)
