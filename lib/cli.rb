require "pry"
class Cli
        
    attr_accessor :user

    def initialize
        @user = nil 
    end 
    
    def run
        greet
        user = User.login
        Cli.options_input(user)
    end
    
    
    def greet
        puts "\n"
        puts "Welcome to Hot Waffles, the best place to find the hottest restaurants in your area!"
        puts "\n"
    end

    def self.display_main_menu(user)
        puts"\n"
        puts"Hello #{user.name}"
        puts "Please select an option by number:"
        puts "Would you like to read a review ? (press 1)"
        puts "Would you like to create a review ? (press 2)"
        puts "Would you like to update a review ? (press 3)"
        puts "Would you like to delete a review? (press 4)"
    end

    def self.options_input(user)
        Cli.display_main_menu(user)
        number = gets.chomp

            case number 
            
            when "1"
                Restaurant.display_restaurants
                puts"\n"
                puts"type the name of a restaurant, so you can read a review!"
                restaurant_name = gets.chomp
                User.find_review(restaurant_name)
                Cli.options_input(user)

            when "2"
                puts"\n"
                puts "What do you wanna call it?"
                  title_input = gets.chomp

                  puts "Who many stars? 1-5"
                  star_rating_input = gets.chomp

                  puts "Where did you eat at?"
                    restaurant_input = gets.chomp
                    rest3 = Restaurant.create(restaurant_input, "funky")
               var = User.create_review(title_input,star_rating_input,rest3)
               var
                Cli.options_input
            
            when "3"
                #update method
            
            when "4"
                #delete method
            end
    end


    #     puts "Please enter a star rating, for a list of restaurants ? (star rating of 1-5)"
        
    #     write_input = gets.chomp
    #     star_rating = gets.chomp
    #     var = user.find_star_rating(star_rating)
    #     var
    # end
    # update_input = gets.chomp
    # delete_input = gets.chomp
    
    
    # puts "Please enter a star rating for a restaurant:"
    # star_rating = gets.chomp 
    #  
    
    # Ask user if they wanna see highest rated restaurants
    # in terminal bring up highest rated 
    # Would you like to see the 
        # end






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
