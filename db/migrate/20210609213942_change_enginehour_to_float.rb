class ChangeEnginehourToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :enginehour, :float
  end
end
