class AddingFinalDatapoints < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :condition, :string
    add_column :entries, :chain, :integer
    add_column :entries, :axle, :string
    add_column :entries, :endweight, :integer
    add_column :entries, :lapcount, :integer
    add_column :entries, :enginehour, :integer
    add_column :entries, :tyreage, :integer
    add_column :entries, :waddingage, :integer
    add_column :entries, :gearoilage, :integer
  end
end
