class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_fetishes
  has_many :fetishes, through: :user_fetishes
  has_many :criteria
  acts_as_votable
  acts_as_voter
  validates :user_name, presence: true, uniqueness: true

  def matches
    Match.where("user_1_id = :user_id OR user_2_id = :user_id", user_id: self.id)
  end
end
