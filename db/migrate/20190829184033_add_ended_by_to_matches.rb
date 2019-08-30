class AddEndedByToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :ended_by, :integer
  end
end
