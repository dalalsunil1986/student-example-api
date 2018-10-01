class V1::OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :order_items
end