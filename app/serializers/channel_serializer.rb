class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :born_date, :slaughter_date, :crotal, :lot, :weight, :weight_without_bones, :weight_bones, :temperature, :total_value
  has_one :family
  has_one :supplier
end
