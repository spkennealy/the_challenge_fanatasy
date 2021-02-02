class CreateLeagueTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :league_teams do |t|

      t.timestamps
    end
  end
end
