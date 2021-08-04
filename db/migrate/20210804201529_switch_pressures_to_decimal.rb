class SwitchPressuresToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :prepressure, :decimal, :precision => 3, :scale => 1
    change_column :entries, :postpressure, :decimal, :precision => 3, :scale => 1
  end
end
