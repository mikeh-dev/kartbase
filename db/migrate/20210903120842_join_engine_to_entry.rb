class JoinEngineToEntry < ActiveRecord::Migration[6.1]
  def change
    create_join_table :engine, :entries do |t|
      t.index :entry_id
      t.index :engine_id
    end
  end
end
