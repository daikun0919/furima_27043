class Order < ApplicationRecord
  # attr_accessor :token, :price
  belongs_to :user, optional: true
  belongs_to :item, optional: true

end
