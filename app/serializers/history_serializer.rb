class HistorySerializer < ActiveModel::Serializer
  attributes :id, :code, :date, :client, :lot, :item
end
