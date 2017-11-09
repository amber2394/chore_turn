class Chore < ApplicationRecord
  validates :name, :date, presence: true

  belongs_to :household
  has_many :assignment_chores
end
