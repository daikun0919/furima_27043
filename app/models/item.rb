class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery
  belongs_to_active_hash :area
  belongs_to_active_hash :day

  with_options presence: true do
    validates :genre_id, numericality: { other_than: 1 }
    validates :status_id, numericality: { other_than: 1 }
    validates :delivery_id, numericality: { other_than: 1 }
    validates :area_id, numericality: { other_than: 1 }
    validates :day_id, numericality: { other_than: 1 }
  end

  with_options presence: true do
    validates :item_name
    validates :image
    validates :item_price, numericality: { greater_than: 299, less_than: 1000000 }
    validates :item_explain

  end
  
  belongs_to :user
  has_one :order
  has_one_attached :image
end
