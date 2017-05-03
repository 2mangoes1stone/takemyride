class AddReconfirmableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :unconfirmed_email, :string
  end
end
