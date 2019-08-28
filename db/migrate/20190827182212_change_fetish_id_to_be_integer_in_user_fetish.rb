class ChangeFetishIdToBeIntegerInUserFetish < ActiveRecord::Migration[5.2]
  def change
     change_column :user_fetishes, :fetish_id, 'integer USING CAST(fetish_id AS integer)'
     change_column :user_fetishes, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end
