class Clinic < ApplicationRecord
  belongs_to :account

  has_many :doctors
  has_many :patients
end
