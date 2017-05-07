class AddImageDataToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :image_data, :text
  end
end
