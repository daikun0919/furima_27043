class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  validates :genre, presence: true
  validates :genre_id, numericality: { other_than: 1 }
end