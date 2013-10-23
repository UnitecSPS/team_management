class Player < ActiveRecord::Base
  attr_accessible :country, :goals, :name, :number, :position, :team_id, :year_of_birth
  belongs_to :team
end
