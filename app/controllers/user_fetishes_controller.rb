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
    @user_fetish = []
    @user = User.find(params[:user_id])
    @user_fetish = UserFetish.new(user_fetish_params)
    @user_fetish.user = current_user
    if @user_fetish.save
      redirect_to user_user_fetishes_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    @user_fetish.update(user_fetish_params)
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
