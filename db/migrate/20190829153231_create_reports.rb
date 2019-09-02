class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.timestamps
      t.integer :reported_user_id
      t.integer :reported_by_id
    end
  end
end
