class AddMatchToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :match, foreign_key: true
  end
end
