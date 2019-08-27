class UsersController < ApplicationController
  def random
    @user = User.order("RANDOM()").first
    #ajouter .where fetish .include cetish de cirrent_user
  end

end
