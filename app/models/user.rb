class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :email, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/}
    validates :nickname
    validates :birthday
    validates :password, format: { with: /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}$/i}
    validates :password_confirmation
  

    with_options format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/} do
      validates :first_name
      validates :last_name
    end

    with_options format: { with: /^[ア-ン゛゜ァ-ォャ-ョー「」、]+$/} do
      validates :first_name_kana
      validates :last_name_kana
    end
  end

  has_many :items
  belongs_to :order, optional: true
  has_one :address

end
