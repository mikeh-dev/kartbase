class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :track
      t.date :date
      t.integer :run

      t.timestamps
    end
  end
end
