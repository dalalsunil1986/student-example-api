class V1::OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :qty

  belongs_to :order
  belongs_to :product
  
end