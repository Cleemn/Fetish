class UserFetish < ApplicationRecord
  belongs_to :user
  belongs_to :fetish

  validates :user, uniqueness: { scope: :fetish }
end
