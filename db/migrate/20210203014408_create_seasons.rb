class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :title
      t.integer :year
      t.integer :season_number

      t.timestamps
    end
  end
end
