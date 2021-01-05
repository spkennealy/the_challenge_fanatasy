class CreateLeagueManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_managers do |t|
      t.bigint :user_id
      t.bigint :league_id

      t.timestamps
    end
  end
end
