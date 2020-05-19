class Appointment < ApplicationRecord
  # validatidation
  validates :completed, inclusion: { in: [true, false] }

  # relationship
  belongs_to :citizen
  belongs_to :clinic
end
