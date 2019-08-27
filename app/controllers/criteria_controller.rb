class CriteriaController < ApplicationController
  before_action :set_criterium, only: %i[edit update]

  def index
    @user = current_user
    @criterium = @user.criteria.first
  end

  def new
    @criterium = Criterium.new
    @user = User.find(params[:user_id])
    @criterium.user = @user
  end

  def create
    @criterium = Criterium.new(criterium_params)
    @criterium.user = current_user
    if @criterium.save
      redirect_to user_criteria_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    @criterium.update(criterium_params)
    redirect_to user_criteria_path
  end

  private

  def criterium_params
    params.require(:criterium).permit(:gender, :age, :localisation)
  end

  def set_criterium
    @criterium = Criterium.find(params[:id])
  end
end
