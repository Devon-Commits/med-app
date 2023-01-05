class AddAddressToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :address, :string
  end
end
