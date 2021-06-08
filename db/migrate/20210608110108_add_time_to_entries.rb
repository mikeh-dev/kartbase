class AddTimeToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :time, :time
  end
end
