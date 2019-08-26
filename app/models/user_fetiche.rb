class UserFetiche < ApplicationRecord
  belongs_to :user
  belongs_to :fetiche

  validates :user, uniqueness: { scope: :fetiche }
end
