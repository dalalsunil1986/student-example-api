class Order < ApplicationRecord

  validates :email, presence: true
  validates :name, presence: true

  has_many :order_items

  accepts_nested_attributes_for :order_items
end
