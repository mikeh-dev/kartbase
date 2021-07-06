class SwitchFuelsToDecimal < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :fuelload
    remove_column :entries, :endfuel
    add_column :entries, :fuelload, :decimal, :precision => 3, :scale => 1
    add_column :entries, :endfuel, :decimal, :precision => 3, :scale => 1
  end
end
