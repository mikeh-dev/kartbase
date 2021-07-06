class SwitchSomeToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :gearoilage, :decimal, :precision => 4, :scale => 2
    change_column :entries, :waddingage, :decimal, :precision => 4, :scale => 2    
  end
end
