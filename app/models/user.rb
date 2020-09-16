class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :email, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/}
    validates :first_name,format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
    validates :last_name,format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
    validates :first_name_kana, format: { with: /^[ア-ン゛゜ァ-ォャ-ョー「」、]+$/}
    validates :last_name_kana, format: { with: /^[ア-ン゛゜ァ-ォャ-ョー「」、]+$/}
    validates :nickname
    validates :birthday
    validates :password, length: {minimum: 7}
    validates :password_confirmation
  end
  
  has_many :items
  belongs_to :order, optional: true
  has_one :address

end
