class Citizen < ApplicationRecord
  # validation
  validates :email, presence: true, uniqueness: true, format: /.{1,}@\w{2,}\.\w{2,}/
  validates :password, presence: true
  validates :postal_code, presence: true, format: /[a-zA-Z]?\d{6}/
  validates :nric, presence: true, uniqueness: true, format: /[A-Z]\d{7}[A-Z]/

  # relationship
  has_many :appointments
  has_many :clinics, through: :appointments
end
