class UserTransaction

  include ActiveModel::Model
  attr_accessor :postal_code, :area_id, :municipality, :block_number, :apartment_name, :phone_number, :user_id, :item_id, :token
  

  
  
  with_options presence: true do
    validates :postal_code
    validates :area_id
    validates :municipality
    validates :block_number
    validates :phone_number, uniqueness: true, format: { with: /\A\d+-\d+-\d+\z/ }
    validates :token
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, municipality: municipality, block_number: block_number, apartment_name: apartment_name, phone_number: phone_number, order_id: order.id)
  end
end