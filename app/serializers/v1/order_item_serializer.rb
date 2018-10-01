class V1::OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description

  belongs_to :order
end