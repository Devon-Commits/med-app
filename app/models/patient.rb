class Patient < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :account_id, presence: true
  
  belongs_to :account

  has_many :appointments


  require 'csv'
  def self.to_csv

    CSV.generate do |csv|
      csv << column_names

      all.each do |patient|
        csv << patient.attributes.values_at(*column_names)
      end
    end

  end

end
