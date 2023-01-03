json.extract! appointment, :id, :time, :date, :calendar_id, :clinic_id, :doctor_id, :patient_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
