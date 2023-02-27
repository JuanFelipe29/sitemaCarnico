class Channel < ApplicationRecord
  belongs_to :family
  belongs_to :supplier
  has_many :pieces
end
