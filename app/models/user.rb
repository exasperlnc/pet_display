class User < ApplicationRecord
  has_many :pets
  validates :name, presence: true
  validates :email, presence: true
end
