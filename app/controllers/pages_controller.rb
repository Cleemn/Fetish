class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user_matches = current_user.matches if !@user_matches.nil?
    @user_last_match = @user_matches.last if !@user_matches.nil?
  end
end
