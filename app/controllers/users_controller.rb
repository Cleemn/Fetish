class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def random
    # @user_random = []
    # @user_random = User.where(fetishes: current_user.fetishes).order("RANDOM()").first
    @user = User.order("RANDOM()").first
   # @user = User.where"#{current_user.fetishes} LIKE ?", "%#{@fetishes}%".order("RANDOM()").first
    #SELECT * FROM User WHERE (`current_user.fetishes`='0' AND lat='0') ORDER BY RAND() LIMIT 1
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

