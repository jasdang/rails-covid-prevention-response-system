class Clinic < ApplicationRecord
  validates :address, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true}
  # relationship
  has_many :appointments
  has_many :citizens, through: :appointments
end
