class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.date :date, null: false
      t.string :venue, null: false

      t.timestamps
    end
  end
end
