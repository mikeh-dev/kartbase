class Engine < ActiveRecord::Migration[6.1]
  def change
    create_table :engine do |t|
      t.string :name
    end
  end
end
