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

  def dashboard
    @user = current_user
    @criteria = current_user.criteria
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :user_name, :gender, :birth_date, :avatar, :description)
  end

end