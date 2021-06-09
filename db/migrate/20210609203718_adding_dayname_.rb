class AddingDayname < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :daytype, :string
  end
end
