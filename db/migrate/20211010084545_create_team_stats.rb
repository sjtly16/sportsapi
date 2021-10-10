class CreateTeamStats < ActiveRecord::Migration[6.1]
  def change
    create_table :team_stats do |t|
      t.belongs_to :team, null: false, foreign_key: true
      t.integer :played
      t.integer :won
      t.integer :lost
      t.integer :draw
      t.integer :ranking, unique: true

      t.timestamps
    end
  end
end
