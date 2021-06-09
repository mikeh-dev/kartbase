class AddSessionType < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :sessiontype, :string
  end
end
