class RemoveRatingFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :rating, :string
  end
end
