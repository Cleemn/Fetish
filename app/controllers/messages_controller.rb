class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
    @match = Match.find(params[:match_id])
    @myself = current_user
    @user = @match.user
  end

  def create
    @message = Message.new
    @match = Match.find(params[:match_id])
    @message.user = current_user
    @message.content = message_params[:content]
    @message.match = Match.find(params[:match_id])
    @message.save!
    redirect_to match_messages_path(@match)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
