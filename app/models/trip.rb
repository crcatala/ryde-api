class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :driver
  belongs_to :payment_method

  validates :user, presence: true
  validates :car, presence: true
  validates :driver, presence: true
  validates :payment_method, presence: true
  validates :city, presence: true
  validates :fare, presence: true # USD
  validates :pickup_time, presence: true
end
