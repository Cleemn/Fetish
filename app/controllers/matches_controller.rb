class MatchesController < ApplicationController
  def index
    # @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
    @matches = Match
               .where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))
               .where(ended_by: nil)
  end

  def new
    @match = Match.new
    @user = User.find(params[:user_id])
    @match.user = @user
  end

  def show
    @match = Match.find(params[:id])
    @user = User.find(@booking.article_id)
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

  def end
    @match = Match.find(params[:match_id])
    @match.ended_by = current_user.id
    @match.save!
  end

  def accepted
    @match = Match.find(params[:match_id])
    # @match.status = "accepted"
    # @match.save
    # redirect_to dashboard_path WHERE ? Ou m'envoie le fait de dire oui
  end

  def declined
    @match = Match.find(params[:match_id])
    # @match.status = "declined"
    # @match.save
    # redirect_to dashboard_path WHERE ? Ou m'envoie ce refus ?
  end

  private

  def match_params
    params.require(:match).permit(:user_1_id, :user_2_id)
  end
end
