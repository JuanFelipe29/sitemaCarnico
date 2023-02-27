class ProcessedProductSerializer < ActiveModel::Serializer
  attributes :id
  has_one :name_of_products
  has_one :product_type
end
