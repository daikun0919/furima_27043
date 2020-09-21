class Address < ApplicationRecord
  
  # validates :phone_number, uniqueness: true
   belongs_to :order
end
