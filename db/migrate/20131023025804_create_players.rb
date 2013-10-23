class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.integer :goals
      t.string :position
      t.integer :year_of_birth
      t.string :country
      t.references :team

      t.timestamps
    end
  end
end
