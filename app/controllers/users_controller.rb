class UsersController < ApplicationController
  def random
    @user = User.order("RANDOM()").first
    #ajouter .where fetish .include cetish de cirrent_user
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
