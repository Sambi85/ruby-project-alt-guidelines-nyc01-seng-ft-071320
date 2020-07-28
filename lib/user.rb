class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews


    def self.create_account(name) ### Passed
      user = self.create(name: name)
    end

    # def change_account
    # end

    def create_review(title,star_rating,restaurant) ### Passed
      review = Review.create(title: title, star_rating: star_rating, restaurant_id: restaurant.id, user_id: self.id)
    end

    def find_review(title)  ### Helper ###Passed
      Review.find_by(title: title)
    end

    # def find_restaurant()
    # end

    # def top_rated
    # end
    
    def update_review(title,star_rating,restaurant)
      review = Review.create(title: title, star_rating: star_rating, restaurant_id: restaurant.id, user_id: self.id)
    end
 
    def remove_review(title) ### Passed
       rev = Review.find_by(title: title)
        rev.delete
    end 

end