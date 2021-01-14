class CreateTeamChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_challengers do |t|
      t.bigint :team_id, null: false
      t.bigint :challenger_id, null: false
      t.bigint :season_id, null: false
      t.timestamps
    end

    add_index :team_challengers, :team_id
    add_index :team_challengers, :challenger_id
  end
end
