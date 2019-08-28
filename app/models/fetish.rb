class Fetish < ApplicationRecord
  FETISHES = %w(Pieds Mains Uniformes Cuir BBW)

  has_many :user_fetishes
  has_many :users, through: :user_fetishes

  validates :name, presence: true # inclusion: { in: FETISHES }
  validates :description, presence: true
  validates :image, presence: true
end
