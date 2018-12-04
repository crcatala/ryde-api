class Car < ApplicationRecord
  VALID_CAR_TYPES = [
    "uber",
    "uberX",
    "uberPool",
  ]

  belongs_to :driver
  validates :driver, presence: true
  validates :car_type, presence: true, inclusion: {in: VALID_CAR_TYPES}
end
