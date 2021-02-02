class RemoveLeagueidFromTeam < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :league_id, :bigint
  end
end
