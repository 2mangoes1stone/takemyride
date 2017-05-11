class DeleteRatingFromRatings < ActiveRecord::Migration[5.0]
  def change
    remove_column :ratings, :rating, :string
    remove_column :ratings, :description, :text
    add_column :ratings, :review, :text
  end
end
