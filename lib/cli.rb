require "pry"
require "colorize"
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
       puts "  /$$   /$$             /$$           /$$      /$$            /$$$$$$   /$$$$$$  /$$                           /$$ "     
       puts " | $$  | $$            | $$          | $$  /$ | $$           /$$__  $$ /$$__  $$| $$                          | $$ "     
       puts " | $$  | $$  /$$$$$$  /$$$$$$        | $$ /$$$| $$  /$$$$$$ | $$  \__/| $$  \__/  | $$  /$$$$$$   /$$$$$$$      | $$ "     
       puts " | $$$$$$$$ /$$__  $$|_  $$_/        | $$/$$ $$ $$ |____  $$| $$$$    | $$$$    | $$ /$$__  $$ /$$_____/      | $$ "     
       puts " | $$__  $$| $$  \\ $$  | $$          | $$$$_  $$$$  /$$$$$$$| $$_/    | $$_/    | $$| $$$$$$$$|  $$$$$$       |__/ "     
       puts " | $$  | $$| $$  | $$  | $$ /$$      | $$$/ \\ $$$ /$$__  $$ | $$      | $$      | $$| $$_____/ \____  $$           "     
       puts " | $$  | $$|  $$$$$$/  |  $$$$/      | $$/   \\ $$|  $$$$$$$ | $$      | $$      | $$|  $$$$$$$ /$$$$$$$/       /$$ "     
       puts " |__/  |__/ \\______/    \\___/         |__/     \__/ \\_______/ |__/      |__/     |__/ \_______/|_______/        |__/ " 
        
        puts "\n"
        puts "\n"        
        puts "Welcome to Hot Waffles, a personal restaurant review log for you and yours!".red
        puts "\n"
    end

    def self.display_main_menu(user)
        puts"\n"
        puts"Hello #{user.name}"
        puts "Please select an option by number:".red
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
                puts"\n"
                puts"type the name of a restaurant, so you can read a review!"
                restaurant_name = gets.chomp
                User.find_review(restaurant_name)
                Cli.options_input(user)

            when "2"
                puts"\n"
                puts"\n"
                puts "What do you wanna call it?"
                  title_input = gets.chomp

                  puts "Who many stars? 1-5"
                  star_rating_input = gets.chomp

                  puts "Where did you eat at?"
                    restaurant_input = gets.chomp
                    resta = Restaurant.create(name: restaurant_input, style: "funky")
                    user.create_review(title_input,star_rating_input,resta)
                  puts "\n"
                  puts "your review: '#{title_input}'has been published!!! "
                Cli.options_input(user)
            
            when "3"
                puts "\n"
                puts "\n"
                user.update_review
                
                Cli.options_input(user)
            when "4"
                puts "\n"
                puts "Which review would you like to delete ?"
            
                user.remove_review
                Cli.options_input(user)
               
            else 
                puts "Sorry only press numbers from 1-4 :("
                Cli.options_input(user)
            
            end
    end

    #navigate to a page and see the review and star rating of t any restaurant 
    #analitics top 3 ranked, by star rating, style, 

end

