class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.text :detail
      t.integer :minutes
      t.integer :goals
      t.integer :assists
      t.integer :yellows
      t.boolean :red
      t.boolean :initial
      t.integer :distance
      t.references :player

      t.timestamps
    end
    add_index :performances, :player_id
  end
end
