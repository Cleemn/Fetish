class Message < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :content, presence: true, allow_blank: false
end
