class AddUser1IdToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :user1_id, :string
  end
end
