class AddPictureToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :picture, :string
  end
end
