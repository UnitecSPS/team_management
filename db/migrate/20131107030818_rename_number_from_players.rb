class RenameNumberFromPlayers < ActiveRecord::Migration
  def up
    rename_column :players, :number, :jersey_number
  end

  def down
    rename_column :players, :jersey_number, :number
  end
end
