class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :nit, :email, :phone
end
