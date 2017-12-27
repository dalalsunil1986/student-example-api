class V1::FactSerializer < ActiveModel::Serializer
  attributes :text

  belongs_to :ip
end