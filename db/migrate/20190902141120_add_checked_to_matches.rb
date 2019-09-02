class AddCheckedToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :checked_by_u1, :boolean, default: false
    add_column :matches, :checked_by_u2, :boolean, default: false
  end
end
