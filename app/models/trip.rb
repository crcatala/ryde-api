class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :driver
  belongs_to :payment_method
end
