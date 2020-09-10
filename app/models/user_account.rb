class UserAccount < ApplicationRecord
  with_options presence: true do
    validates :card_number, uniqueness: true
    validates :card_period
    validates :security_code, uniqueness: true
    validates :postal_code, presence: true, uniqueness: true
    validates :area_id
    validates :municipality, uniqueness: true
    validates :block_number
    validates :apartment_name
    validates :phone_number, uniqueness: true
  end
  
  belongs_to :user
end
