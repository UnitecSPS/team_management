class AddStadiumFieldToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :stadium_name, :string, default: "No Ground"
  end
end
