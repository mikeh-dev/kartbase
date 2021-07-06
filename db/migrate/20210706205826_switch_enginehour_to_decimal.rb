class SwitchEnginehourToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :enginehour, :decimal, :precision => 4, :scale => 2
  end
end
