class AddVisitReasonToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :visit_reason, :text
  end
end
