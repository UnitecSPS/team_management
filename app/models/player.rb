class Player < ActiveRecord::Base
  attr_accessible :country, :goals, :name, :number, :position, :team_id, :year_of_birth
  belongs_to :team
  has_many :performances
  validates_presence_of :name, :number

  def self.positions
    ["Portero", "Defensa Central", "Lateral Izquierdo", "Lateral Derecho", "Mediocampista", "Delantero"]
  end
end
