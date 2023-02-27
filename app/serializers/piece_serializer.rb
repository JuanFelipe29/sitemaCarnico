class PieceSerializer < ActiveModel::Serializer
  attributes :id, :lot, :weight
  has_one :channel
  has_one :piece_name
end
