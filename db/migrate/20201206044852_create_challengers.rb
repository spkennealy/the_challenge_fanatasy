class CreateChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :challengers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :original_show, null: false
      t.integer :total_seasons
      t.integer :total_wins
      t.timestamps
    end
  end
end
