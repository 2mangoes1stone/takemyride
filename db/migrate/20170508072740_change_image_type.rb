class ChangeImageType < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :image_data, :string
    add_column :photos, :image_data, :text
  end
end
