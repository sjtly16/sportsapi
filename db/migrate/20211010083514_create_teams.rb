class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :home_site
      t.string :coach

      t.timestamps
    end
  end
end
