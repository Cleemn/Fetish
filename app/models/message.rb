class Message < ApplicationRecord
  belongs_to :user
  # une fois que j'aurai ma table match rappeler la ref
  # et refaire migration dans create_messages
end
