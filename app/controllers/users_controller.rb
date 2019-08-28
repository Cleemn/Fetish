class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def random
   @user = User
      .includes(:fetishes)
      .where(fetishes: current_user.fetishes)
      .where.not(id: current_user.id)
      .order("RANDOM()")
      .first

    @match = Match.new(user_1_id: @user.id, user_2_id: current_user.id)
    @match.save!
  end
  
  def accept
    # see like
    @user = User.find(params[:user_id])
    @user.liked_by(current_user)
    @user.save
    # Match ? / Si la personne likee a elle aussi like
    if @user.liked? current_user
      @match = Match.new
      @match.user_1_id = current_user
      @match.user_2_id = @user
      @match.save
    end
    redirect_to user_show_test_path(@user)
  end

  def decline
    # see dislike
    @user = User.find(params[:user_id])
    @user.disliked_by(current_user)
    @user.save
    redirect_to user_show_test_path(@user)
  end

  #def user_params
   # params.require(:id).permit(:user_id)
  #end

  def dashboard
    @user = current_user
    @criteria = current_user.criteria
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :user_name, :gender, :birth_date, :avatar, :description)
  end

end
