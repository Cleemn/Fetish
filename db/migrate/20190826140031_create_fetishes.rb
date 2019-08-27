class CreateFetishes < ActiveRecord::Migration[5.2]
  def change
    create_table :fetishes do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
