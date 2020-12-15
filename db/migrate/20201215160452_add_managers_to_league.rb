class AddManagersToLeague < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :managers, :bigint, array: true, default: []
  end
end
