class Household < ApplicationRecord
  validates :name, :address, :city, :state, :zip_code, presence: true

  has_many :chores
end
