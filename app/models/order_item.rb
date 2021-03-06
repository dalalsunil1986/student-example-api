class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :qty, presence: true, numericality: true
end
