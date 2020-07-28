class CreateTableReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :star_rating
      t.integer :restaurant_id
      t.integer :user_id
    end
  end
end