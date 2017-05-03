class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.string :address
      t.string :city
      t.string :state
      t.string :country_code
      t.decimal :long
      t.decimal :lat

      t.timestamps
    end
  end
end
