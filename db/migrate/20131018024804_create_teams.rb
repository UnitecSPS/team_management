class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.datetime :founded_at
      t.string :country
      t.boolean :first_div
      t.text :address
      t.integer :phone

      t.timestamps
    end
  end
end
