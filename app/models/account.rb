class Account < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable

  has_many :clinics
  has_many :doctors
  has_many :patients
end
