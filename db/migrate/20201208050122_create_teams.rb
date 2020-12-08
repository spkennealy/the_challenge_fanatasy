class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :team_name, null: false
      t.integer :wins
      t.integer :losses
      t.bigint :league_id, null: false
      t.timestamps
    end

    add_index :teams, :league_id
  end
end
