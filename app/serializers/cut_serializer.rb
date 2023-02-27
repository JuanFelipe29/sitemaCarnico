class CutSerializer < ActiveModel::Serializer
  attributes :id, :start_date_maturation, :end_date_maturation, :maturing, :available
  has_one :piece
  has_one :cut_name
  has_one :cut_type
end
