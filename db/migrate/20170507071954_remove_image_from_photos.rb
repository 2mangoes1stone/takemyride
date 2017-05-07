class RemoveImageFromPhotos < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :image, :string
  end
end
