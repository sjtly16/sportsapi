class CreateMatchStats < ActiveRecord::Migration[6.1]
  def change
    create_table :match_stats do |t|
      t.belongs_to :match, null: false, foreign_key: true
      t.string :match_results
      t.string :won_by
      t.string :man_of_the_match
      t.string :highest_run_scorrer
      t.string :most_wicket_taker

      t.timestamps
    end
  end
end
