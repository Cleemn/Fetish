class CreateUserFetiches < ActiveRecord::Migration[5.2]
  def change
    create_table :user_fetiches do |t|
      t.string :fetiche_id
      t.string :user_id

      t.timestamps
    end
  end
end
