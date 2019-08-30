class Report < ApplicationRecord
  belongs_to :reported_user, class_name: 'User'
  belongs_to :reported_by, class_name: 'User'
end
