class PaymentMethod < ApplicationRecord
  VALID_CARD_TYPES = [
    "Visa",
    "Mastercard",
    "AMEX",
    "Discover",
  ]

  VALID_PAYMENT_TYPES = [
    "credit_card",
  ]

  belongs_to :user

  validates :user, presence: true
  validates :last_four, presence: true
  validates :card_type, presence: true, inclusion: {in: VALID_CARD_TYPES}
  validates :payment_type, presence: true, inclusion: {in: VALID_PAYMENT_TYPES}
end
