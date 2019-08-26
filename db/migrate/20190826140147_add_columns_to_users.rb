class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :avatar, :string
    add_column :users, :description, :text
    add_column :users, :admin, :boolean
    add_column :users, :birth_date, :date
    add_column :users, :post_code, :string,
    add_column :users, :gender, :string,
    add_column :users, :localisation, :string
  end
end
