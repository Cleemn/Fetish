class Fetiche < ApplicationRecord
  # FETICHES = %w(Pieds Mains Uniformes Cuir BBW)

  has_many :user_fetiches
  has_many :users, through: :user_fetiches

  validates :name, presence: true # inclusion: { in: FETICHES }
  validates :description, presence: true
  validates :image, presence: true
end
