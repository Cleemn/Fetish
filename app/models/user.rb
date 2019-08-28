class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :matches
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_fetishes
  has_many :fetishes, through: :user_fetishes
end
