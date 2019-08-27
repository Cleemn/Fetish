class AddUser2IdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user2_id, :string
  end
end
