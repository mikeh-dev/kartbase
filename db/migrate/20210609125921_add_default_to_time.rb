class AddDefaultToTime < ActiveRecord::Migration[6.1]
  def change
    change_column_default :entries, :time, -> { 'CURRENT_TIMESTAMP' }
  end
end
