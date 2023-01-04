class Appointment < ApplicationRecord
  belongs_to :account
  belongs_to :clinic
  belongs_to :doctor
  belongs_to :patient

  has_many :patients
end
