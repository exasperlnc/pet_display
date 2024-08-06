class Pet < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :age, presence: true
  validates :species, presence: true
end
