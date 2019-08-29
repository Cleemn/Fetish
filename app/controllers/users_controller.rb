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
    .order("RANDOM()")
    .uniq
    .first


     #.where.not(id: current_user.find_voted_items)


    # @user = User
    #   .joins(:user_fetishes)
    #   .joins(:fetishes)
    #   .where(fetishes: current_user.user_fetishes)
    #
    #   .where.not(id: current_user.find_voted_items)
    #
    #   .first
    #   raise
    # @match = Match.new(user_1_id: @user.id, user_2_id: current_user.id)
    # @match.save!

     #.where(gender: current_user.criterium.gender)
  end

  def accept
    # see like
    @user = User.find(params[:user_id])
    @user.liked_by(current_user)
    @user.save
    # Match ? / Si la personne likee a elle aussi like
    if @user.liked? current_user
      @match = Match.new
      @match.user_1 = current_user
      @match.user_2 = @user
      @match.save
    end
      redirect_to random_path
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
    @criterium = current_user.criterium
    @user_fetishes = current_user.user_fetishes
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :user_name, :gender, :birth_date, :avatar, :description)
  end

end
