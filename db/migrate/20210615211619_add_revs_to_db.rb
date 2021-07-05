class AddRevsToDb < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :besttoprevs, :integer
    add_column :entries, :bestbottomrevs, :integer
    add_column :entries, :secondbestlaptoprevs, :integer
    add_column :entries, :secondbestlapbottomrevs, :integer
    add_column :entries, :thirdbesttoprevs, :integer
    add_column :entries, :thirdbestbottomrevs, :integer
    add_column :entries, :highestrevs, :integer
    add_column :entries, :engine, :string
  end
end
