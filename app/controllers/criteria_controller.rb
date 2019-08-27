class CriteriaController < ApplicationController
  def new
    @criterium = Criterium.new
    @user = User.find(params[:user_id])
    @criterium.user = @user
  end

  def create
    @criterium = Criterium.new(criterium_params)
    @criterium.user = current_user
    if @criterium.save
      redirect_to user_session_path
    else
      render :new
    end
  end

  def update
    @criterium.update(criterium_params)
    redirect_to user_session_path
  end

  private

  def criterium_params
    params.require(:criterium).permit(:gender, :age, :localisation)
  end

  def set_criterium
    @criterium = Criterium.find(params[:id])
  end
end
