class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :email, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/}
    validates :nickname
    validates :birthday
    VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
    validates :password, format: { with: VALID_PASSWORD_REGEX}
    validates :password_confirmation
  

    with_options format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/} do
      validates :first_name
      validates :last_name
    end

    with_options format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/} do
      validates :first_name_kana
      validates :last_name_kana
    end
  end

  has_many :items
  belongs_to :order, optional: true
  has_one :address

end
