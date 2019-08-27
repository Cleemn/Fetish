class CreateUserFetishes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_fetishes do |t|
      t.string :fetish_id
      t.string :user_id

      t.timestamps
    end
  end
end
