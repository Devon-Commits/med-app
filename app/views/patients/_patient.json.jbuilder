json.extract! patient, :id, :name, :address, :account_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
