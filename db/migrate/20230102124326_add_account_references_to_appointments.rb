class AddAccountReferencesToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :account, null: false, foreign_key: true
  end
end
