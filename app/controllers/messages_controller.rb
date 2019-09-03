class MessagesController < ApplicationController
  # before_action :set_message, only: [:index]
  # def checked
  #   @match = Match.find(params[:match_id])
  #   @new_notifications = @match.messages.where(newnotification: true)

  # end
  def index
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
    @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
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

    @uploaded_file = message_params[:picture]
    @filename = @uploaded_file.original_filename

    @message.picture = @filename
    @message.content = message_params[:content]

    #File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
    # file.write(uploaded_file.read)
    # end

    @message.match = Match.find(params[:match_id])
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


  private

  def message_params
    params.require(:message).permit(:content, :picture, :match_id)
  end
end
