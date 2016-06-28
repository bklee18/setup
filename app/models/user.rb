class User < ActiveRecord::Base
  has_many :bids
  has_many :bidded_on_items, through: :bids, source: :item
  has_many :sell_items, { class_name: "Item", foreign_key: :seller }
  has_many :purchased_items, through: :bids,
end
