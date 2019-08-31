class Message < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  private

  def broadcast_message
    ActionCable.server.broadcast("matches_chat_#{match.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message_content",
        locals: { message: self, user: user.id }
      ),
      message_user_id: user.id
    })
  end
end
