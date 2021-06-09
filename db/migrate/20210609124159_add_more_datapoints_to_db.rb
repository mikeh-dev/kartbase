class AddMoreDatapointsToDb < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :airmix, :float
    add_column :entries, :idle, :float
    add_column :entries, :rimset, :string
    add_column :entries, :tyre, :string
    add_column :entries, :tyreset, :string
    add_column :entries, :camber, :string
    add_column :entries, :caster, :string
    add_column :entries, :toe, :string
    add_column :entries, :frontride, :string
    add_column :entries, :rearride, :string
    add_column :entries, :plug, :string
    add_column :entries, :frontbar, :string
    add_column :entries, :fuelload, :string
    add_column :entries, :fuelmix, :string
  end
end
