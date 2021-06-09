class ChangeWeightToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :endweight, :float
  end
end
