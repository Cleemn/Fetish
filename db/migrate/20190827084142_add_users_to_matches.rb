class AddUsersToMatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :user_1
    add_reference :matches, :user_2
  end
end
