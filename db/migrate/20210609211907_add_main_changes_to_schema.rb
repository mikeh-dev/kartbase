class AddMainChangesToSchema < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :mainchanges, :string
  end
end
