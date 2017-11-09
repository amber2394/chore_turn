class Household < ApplicationRecord
  validates :name, :home_address, presence: true

  has_many :chores
end
