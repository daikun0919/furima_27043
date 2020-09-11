class UserTransaction

  include ActiveModel::Model
  attr_accessor :postal_code, :area_id, :municipality, :block_number, :apartment_name, :phone_number, :item_id, :token
  

  
  
  with_options presence: true do
    validates :postal_code
    validates :area_id
    validates :municipality
    validates :block_number
    validates :phone_number
    validates :token
  end

  def save
    # ユーザーの情報を保存し、「user」という変数に入れている
    user = User.create(email: email, first_name: first_name, last_name: last_name)
    # 住所の情報を保存
    Address.create(postal_code: postal_code, area_id: area_id, municipality: municipality, block_number: block_number, apartment_name: apartment_name, phone_number: phone_number)
  end
end