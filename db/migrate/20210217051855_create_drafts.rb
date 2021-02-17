class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.bigint :season_id, null: false
      t.bigint :league_id, null: false

      t.timestamps
    end

    add_index :drafts, :season_id
    add_index :drafts, :league_id
  end
end
