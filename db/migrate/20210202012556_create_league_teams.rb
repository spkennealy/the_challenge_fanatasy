class CreateLeagueTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :league_teams do |t|
      t.bigint :league_id, null: false
      t.bigint :team_id, null: false

      t.timestamps
    end

    add_index :league_teams, :team_id
    add_index :league_teams, :league_id
  end
end
