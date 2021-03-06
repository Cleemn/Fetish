class ReportsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @report = Report.new
    @report.reported_user = @user
    @report.reported_by = current_user
    @report.save
    redirect_to matches_path
  end
end
