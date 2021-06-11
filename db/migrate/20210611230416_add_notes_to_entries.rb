class AddNotesToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :sessionnotes, :text
  end
end
