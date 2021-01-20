class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :epsidoe_name, null: false
      t.datetime :air_date, null: false
      t.bigint :season_id, null: false
      t.timestamps
    end
  end
end
