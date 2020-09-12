class Address < ApplicationRecord
  with_options presence: true do
    validates :postal_code, uniqueness: true
    validates :area_id
    validates :municipality, uniqueness: true
    validates :block_number
    validates :phone_number, uniqueness: true
  end
  
   belongs_to :order
end
