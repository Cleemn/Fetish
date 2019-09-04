class Fetish < ApplicationRecord
  FETISHES = %w(Pieds Mains Uniformes BBW Cuir Aquaphilie Bandana Bottes Chaussures Poupée Ballons Lunettes Seins Sous-vêtements Knismolagnie Nasophilie Sthénolagnie Zentai)

  has_many :user_fetishes
  has_many :users, through: :user_fetishes

  validates :name, presence: true, inclusion: { in: FETISHES }
  validates :description, presence: true
  validates :image, presence: true
end
