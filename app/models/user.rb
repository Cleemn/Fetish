class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :matches
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_fetishes
  has_many :fetishes, through: :user_fetishes
  has_one :criterium

  acts_as_votable
  acts_as_voter
  validates :user_name, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :description, length: { maximum: 120 }

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  # address ou localisation?

  def matches
    Match.where("user_1_id = :user_id OR user_2_id = :user_id", user_id: self.id)
  end

  def compute_age(user)
    age = Date.today - user.birth_date
  end

  def match_as_u1
    Match.where(user_1_id: self.id)
  end

  def match_as_u2
    Match.where(user_2_id: self.id)
  end
end
