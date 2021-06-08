class AddExtraDataToDb < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :prepressure, :integer
    add_column :entries, :postpressure, :integer
    add_column :entries, :bestlap, :integer
    add_column :entries, :secondbestlap, :integer
    add_column :entries, :thirdbestlap, :integer
    add_column :entries, :rearwidth, :integer
    add_column :entries, :frontwidth, :string
    add_column :entries, :needleclip, :integer
    add_column :entries, :jet, :integer
  end
end
