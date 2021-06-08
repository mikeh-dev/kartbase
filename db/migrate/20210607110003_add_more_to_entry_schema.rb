class AddMoreToEntrySchema < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :gearing, :string
  end
end
