class UsersController < ApplicationController
  def random
    @user = User.order("RANDOM()").first
    # @user = User.where"#{current_user.fetishes} LIKE ?", "%#{@fetishes}%".order("RANDOM()").first
  end

  def show_test
    @user = User.find(params[:user_id])
  end

  def admin
    @user = User.find(current_user.id)
    @users = User.all
    @matches = Match.all
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
    raise
    redirect_to user_show_test_path(@user)
  end

  def decline
    # see dislike
    @user = User.find(params[:user_id])
    @user.disliked_by(current_user)
    @user.save
    redirect_to user_show_test_path(@user)
  end

  private

  def user_params
    params.require(:id).permit(:user_id)
  end

end
#SELECT * FROM User WHERE (`current_user.fetishes`='0' AND lat='0') ORDER BY RAND() LIMIT 1
