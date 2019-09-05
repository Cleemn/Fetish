class UserFetishesController < ApplicationController
  before_action :set_user_fetish, only: %i[edit update]

  def index
    @user = current_user
    @user_fetish = @user.user_fetishes
  end

  def new
    @user_fetish = UserFetish.new
    @user = User.find(params[:user_id])
    @user_fetish.user = @user
  end

  def create
    @user = User.find(params[:user_id])
    # if !params[:user_festish].nil?
      fetishes = params[:user_fetish][:fetish_id]
      fetishes.each do |fetish|
      fetish = Fetish.find(fetish)
      UserFetish.create!(fetish_id: fetish.id, user_id: current_user.id)
         # @fetish.update(fetish_params)
      # end
    end
    redirect_to user_user_fetishes_path
  end

  def edit
    @fetish = Fetish.find(params[:user_fetish][:fetish_id])
  end

  def update
    @fetish = Fetish.find(params[:user_fetish][:fetish_id])
    @fetish.update(fetish_params)
    redirect_to user_user_fetishes_path
  end

  def destroy
    @user = current_user
    @user_fetish = UserFetish.find(params[:id])
    @user_fetish.destroy
    redirect_to user_user_fetishes_path
  end

  private

  def user_fetish_params
    params.require(:user_fetish).permit(:fetish_id)
  end

  def set_user_fetish
    @user_fetish = UserFetish.find(params[:id])
  end
end
