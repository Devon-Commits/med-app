class Doctor < ApplicationRecord
  belongs_to :account

  has_many :appointments
end
