class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  #validates :nickname, presence: true, uniqueness: true
  #validates :birthday, presence: true, uniqueness: true

  has_many :items

end
