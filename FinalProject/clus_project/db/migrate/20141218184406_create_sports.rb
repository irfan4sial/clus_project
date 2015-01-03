class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :player_name
      t.string :team_name

      t.timestamps
    end
  end
end
