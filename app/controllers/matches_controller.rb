class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end


  def new
    @match = Match.new
    @user = User.find(params[:user_id])
    @match.user = @user
  end


  # def new
  #   @match = Match.new
  #   @user = User.find(params[:id])
  #   # quel id ici?
  #   @match.user = @user
  # end


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

  def show
    @match = Match.find(params[:match_id])
    @user = User.find(:match_id)
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
