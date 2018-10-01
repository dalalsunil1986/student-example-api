class V1::ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :price
end