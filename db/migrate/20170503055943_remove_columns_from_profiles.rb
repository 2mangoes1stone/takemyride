class RemoveColumnsFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :long, :decimal
    remove_column :profiles, :lat, :decimal
    remove_column :profiles, :country_code, :string
    remove_column :profiles, :state, :string
    remove_column :profiles, :city, :string
    remove_column :profiles, :address, :string
  end
end
