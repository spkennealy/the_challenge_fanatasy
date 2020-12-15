class CreateTeamOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :team_ownerships do |t|
      t.bigint :team_id, null: false
      t.bigint :owner_id, null: false
      t.timestamps
    end

    add_index :team_owners, [:owner_id, :team_id], unique: true
    add_index :team_owners, :team_id
  end
end
