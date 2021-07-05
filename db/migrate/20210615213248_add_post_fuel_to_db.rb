class AddPostFuelToDb < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :endfuel, :string
  end
end
