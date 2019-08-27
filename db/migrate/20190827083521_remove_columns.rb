class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :users_id
    remove_column :matches, :user2_id
    remove_column :matches, :user1_id
    remove_column :messages, :user2_id
  end
end


# command shift. d pour dupliquer
# bingint - ref
