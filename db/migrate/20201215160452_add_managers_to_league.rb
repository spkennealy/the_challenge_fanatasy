class AddManagersToLeague < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :managers, :text, array: true, default: []
  end
end
