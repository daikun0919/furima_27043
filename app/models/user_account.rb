class UserAccount < ApplicationRecord
  validates :card_number, presence: true, uniqueness: true
  validates :card_period, presence: true
  validates :security_code, presence: true, uniqueness: true
  validates :postal_code, presence: true, uniqueness: true
  validates :area_id, presence: true
  validates :municipality, presence: true, uniqueness: true
  validates :block_number, presence: true
  validates :apartment_name, presence: true
  validates :phone_number, presence: true, uniqueness: true
  
  belongs_to :user
end
