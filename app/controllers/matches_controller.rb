class MatchesController < ApplicationController
  def index
    @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
  end
  # puis-je tej cette methode? ainsi que route, action controller

  def new
    @match = Match.new
    @user = User.find(params[:user_id])
    @match.user = @user
  end

  def create
    @match = Match.new(params)
    @myself = current_user
    if @match.user_1 != current_user
      @user = @match.user_1
    else
      @user = @match.user_2
    end
    @match.user_1 = @myself
    @match.user_2 = @user
    if match.save
      redirect_to match_messages_path(@match)
    else
      render :new
    end

  end

  # def show
  #   @match = Match.find(params[:match_id])
  #   @user = User.find(:match_id)
  #   raise
  # end

  # def checked
  #   @match =
  #   @new_notifications = @match.messages.where(newnotification: true)
  #   @new_notifications.each do |new_notif|
  #     new_notif.newnotification = false
  #     new_notif.save
  #   end
  # end

  private

  def match_params
    params.require(:match).permit(:user_1_id, :user_2_id)
  end
end
