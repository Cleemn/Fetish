class CreateCriteria < ActiveRecord::Migration[5.2]
  def change
    create_table :criteria do |t|
      t.string :gender
      t.integer :age
      t.string :localisation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
