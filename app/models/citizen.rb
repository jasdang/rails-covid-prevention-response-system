class Citizen < ApplicationRecord
  #relationship
  has_many :appointments
  has_many :clinics, through: :appointments
end
