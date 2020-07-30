class AddColumnRestaurantId < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :restaurant_id, :integer
  end
end
