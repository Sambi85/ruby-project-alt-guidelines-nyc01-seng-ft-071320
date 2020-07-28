class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews


    def create_account(name)
      user1 = User.create(name: name)

    end 

    def create_review

    end
    
    def update_review

    end
 
    def remove_review(title) ### Passed
       rev = Review.find_by(title: title)
        rev.delete
    end 

end