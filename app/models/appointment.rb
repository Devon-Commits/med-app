class Appointment < ApplicationRecord
  validates :time, presence: true
  validates :date, presence: true
  validates :visit_reason, presence: true
  validates :account_id, presence: true
  validates :clinic_id, presence: true
  validates :doctor_id, presence: true
  validates :patient_id, presence: true

  belongs_to :account
  belongs_to :clinic
  belongs_to :doctor
  belongs_to :patient

  has_many :notes, dependent: :destroy
  has_many :patients
end
