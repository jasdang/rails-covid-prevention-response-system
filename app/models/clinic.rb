class Clinic < ApplicationRecord
  #relationship
  has_many :appointments
  has_many :citizens, through: :appointments
end
