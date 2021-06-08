class AddLapsAsFloats < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :bestlap, :float
    add_column :entries, :secondbestlap, :float
    add_column :entries, :thirdbestlap, :float
  end
end
