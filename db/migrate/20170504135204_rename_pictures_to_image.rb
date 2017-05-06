class RenamePicturesToImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :pictures, :pictures, :image
  end
end
