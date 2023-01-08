class Clinic < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :account_id, presence: true

  belongs_to :account

  has_many :doctors
  has_many :patients
end
