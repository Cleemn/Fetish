class MessagesController < ApplicationController
  # before_action :set_message, only: [:index]
  # def checked
  #   @match = Match.find(params[:match_id])
  #   @new_notifications = @match.messages.where(newnotification: true)

  # end
  def index
    @message = Message.new
    if @match.nil?
      redirect_to dashboard_path
    else
    @match = Match.find(params[:match_id])
    @user_matches = current_user.matches
    @messages = @match.messages
    @myself = current_user
      if @match.user_1 != current_user
        @user = @match.user_1
      else
        @user = @match.user_2
      end
    @new_notifications = @messages.where.not(user_id: current_user.id)
    @new_notifications.each do |new_notif|
      new_notif.newnotification = false
      new_notif.save
    end
    @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
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
end
