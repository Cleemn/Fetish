class MessagesController < ApplicationController
  # before_action :set_message, only: [:index]
  # def checked
  #   @match = Match.find(params[:match_id])
  #   @new_notifications = @match.messages.where(newnotification: true)

  # end
  def index
    @last_match = Match.last.id
    @message = Message.new
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
    my_match_as_u1 = current_user.match_as_u1
    my_match_as_u1.each do |m|
      m.update(checked_by_u1: true)
    end

    my_match_as_u2 = current_user.match_as_u2
    my_match_as_u2.each do |m|
      m.update(checked_by_u2: true)
    end
    @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
  end

  def create
    @message = Message.new(message_params)
    @match = Match.find(params[:match_id])
    @myself = current_user
    if @match.user_1 != current_user
      @user = @match.user_1
    else
      @user = @match.user_2
    end

    @message.user = current_user
    @message.match = @match
    # @message.save
    if @message.save
      respond_to do |format|
        format.html { redirect_to match_messages_path(@match) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      @messages = @match.messages
      @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
      respond_to do |format|
        format.html { render 'messages/index' }
        format.js  # <-- idem
      end
    end
    # redirect_to match_messages_path(@match)
  end

  def picture_seen
    @message = Message.find(params[:message_id])
    @message.seen = true
    if @message.save
      respond_to do |format|
        format.js # <-- idem
      end
    end
  end

  private

  def message_params
#    params.require(:message).permit(:content, :picture, :match_id)
    params.require(:message).permit(:content, :picture, :picture_cache)
  end
end
