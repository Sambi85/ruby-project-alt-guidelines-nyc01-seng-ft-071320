class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def self.all_names
        self.all.collect do |restaurant| 
           puts "#{restaurant.name}, #{restaurant.style}"
        end
    end

    def self.filter_style(style)
       style_array = self.all.select do |restaurant, x|
                restaurant.style == style
        end
        style_array.each do |style| 
           puts style.name
        end
    end
end