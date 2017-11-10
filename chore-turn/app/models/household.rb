class Household < ApplicationRecord
  validates :name, :address, :city, :state, :zip_code, presence: true
  validates :zip_code, numericality: { equals_to: 5 }

  has_many :chores
end
