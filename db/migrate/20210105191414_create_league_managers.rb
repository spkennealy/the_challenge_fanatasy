class CreateLeagueManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_managers do |t|
      t.bigint :user_id, null: false
      t.bigint :league_id, null: false

      t.timestamps
    end

    add_index :league_managers, :user_id
    add_index :league_managers, :league_id
  end
end
