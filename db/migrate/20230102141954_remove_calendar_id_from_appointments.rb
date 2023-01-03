class RemoveCalendarIdFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :calendar_id, :integer
    remove_column :appointments, :calendar_id, :string
  end
end
