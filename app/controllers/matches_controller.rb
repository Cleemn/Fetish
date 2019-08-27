class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def new
    @match = Match.new

    @user = User.find(params[:id])
    # quel id ici?
    @match.user = @user
  end


  def show
    @match = Match.find(params[:id])
    @user = User.find(@booking.article_id)
  end
  # c'est dans le show que se fera la creation de mon match ou non
  # puis de la, redirection OU non a messages
  # en tout cas au debut, @match.status = "pending"

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
    params.require(:match).permit(:user_id, :status)
  end
end
