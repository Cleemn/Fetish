class MessagesController < ApplicationController
  # before_action :set_message, only: [:index]

  def index
    @messages = Message.all
    @message = Message.new
    @match = Match.find(params[:match_id])
    @myself = current_user
    if @match.user_1 != current_user
      @user = @match.user_1
    else
      @user = @match.user_2
    end
  end

  def create
    @message = Message.new
    @match = Match.find(params[:match_id])
    @myself = current_user
    if @match.user_1 != current_user
      @user = @match.user_1
    else
      @user = @match.user_2
    end
    @message.user = current_user
    @message.content = message_params[:content]
    @message.match = Match.find(params[:match_id])
    @message.save!
    redirect_to match_messages_path(@match)
  end

  private

  def message_params
    params.require(:message).permit(:content, :match_id)
  end

  # def set_message
  #   @match = Match.find(params[:match_id])
  # end
end

#  a regler avec les pundits : la actuellement je peux m'incruster dans les conversations des autres
