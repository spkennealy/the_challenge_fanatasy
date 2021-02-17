class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.bigint :season_id
      t.bigint :league_id

      t.timestamps
    end
  end
end
