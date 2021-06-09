class ChangeDaytypeToSessiontype < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :daytype, :string
  end
end
