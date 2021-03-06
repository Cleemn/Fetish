class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def random
    @user = User
    .joins(:user_fetishes)
    .joins(:fetishes)
    .where(fetishes: { name: current_user.fetishes.pluck(:name)})
    .where.not(id: current_user.id)
    .where.not(id: current_user.find_voted_items)
    .order("RANDOM()")
    .uniq
    .first

    @user_matches = current_user.matches
    @user_last_match = @user_matches.last

    #.where.not(id: current_user.find_voted_items)
    #.where(gender: current_user.criterium.gender.capitalize)
    #.where(localisation: current_user.criterium.localisation.capitalize)
  end

  def accept
    # see like
    @user = User.find(params[:user_id])
    @user.liked_by(current_user)
    @user.save

    @is_match = false
    # Match ? / Si la personne likee a elle aussi like
    if @user.liked? current_user
      @match = Match.new
      @match.user_1 = current_user
      @match.user_2 = @user
      @match.save
      @is_match = true
    end
    respond_to do |format|
      format.html { redirect_to random_path }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
      # redirect_to random_path
  end

  def decline
    # see dislike
    @user = User.find(params[:user_id])
    @user.disliked_by(current_user)
    @user.save
    redirect_to random_path
  end

  #def user_params
   # params.require(:id).permit(:user_id)
  #end

  def dashboard
    @user = current_user
    @user_matches = current_user.matches #if !@user_matches.nil?
    @user_last_match = @user_matches.last if !@user_matches.nil?
    @criterium = current_user.criterium
    @user_fetishes = current_user.user_fetishes
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :user_name, :gender, :birth_date, :avatar, :description)
  end
end
