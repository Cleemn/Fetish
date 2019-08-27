class AddUser2IdToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :user2_id, :string
  end
end
