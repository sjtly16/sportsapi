class CreateMatchParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :match_participants do |t|
      t.belongs_to :match, null: false, foreign_key: true
      t.integer :host_team_id, null: false
      t.integer :away_team_id, null: false

      t.timestamps
    end
  end
end
