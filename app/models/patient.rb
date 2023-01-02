class Patient < ApplicationRecord
  belongs_to :account

  has_many :appointments
end
