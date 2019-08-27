class UsersController < ApplicationController
  def random
    @user = User.order("RANDOM()").first
   # @user = User.where"#{current_user.fetishes} LIKE ?", "%#{@fetishes}%".order("RANDOM()").first
  end
end
#SELECT * FROM User WHERE (`current_user.fetishes`='0' AND lat='0') ORDER BY RAND() LIMIT 1
