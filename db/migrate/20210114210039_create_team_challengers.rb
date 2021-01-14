class CreateTeamChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_challengers do |t|

      t.timestamps
    end
  end
end
