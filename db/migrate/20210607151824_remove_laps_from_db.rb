class RemoveLapsFromDb < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :bestlap, :integer
    remove_column :entries, :secondbestlap, :integer
    remove_column :entries, :thirdbestlap, :integer
  end
end
