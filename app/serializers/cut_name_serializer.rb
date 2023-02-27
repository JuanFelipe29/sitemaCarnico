class CutNameSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :piece
end
