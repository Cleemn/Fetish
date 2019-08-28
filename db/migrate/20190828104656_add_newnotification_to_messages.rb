class AddNewnotificationToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :newnotification, :boolean, default: true
  end
end
