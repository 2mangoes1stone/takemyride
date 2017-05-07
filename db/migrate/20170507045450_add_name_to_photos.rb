class AddNameToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :name, :string
  end
end
