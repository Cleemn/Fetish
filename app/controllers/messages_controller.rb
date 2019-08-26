class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
    @user = User.find(params[:id])
    @myself = current_user
  end

  def create
    @message = Message.new
    @message.user = current_user
    @message.content = message_params[:content]
    @message.save!
    redirect_to messages_path
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
