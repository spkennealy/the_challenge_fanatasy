class RemoveManagersFromLeagues < ActiveRecord::Migration[5.2]
  def change
    remove_column :leagues, :managers, :string
  end
end
