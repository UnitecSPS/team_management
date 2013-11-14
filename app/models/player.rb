class Player < ActiveRecord::Base
  attr_accessible :country, :goals, :name, :jersey_number, :position, :team_id, :year_of_birth
  belongs_to :team
  has_many :performances
  validates_presence_of :name, :jersey_number
  
  before_validation do |player|
   call_before_validation player.name
   print Team.test
  end
  after_validation :call_after_validation, on: :create
  before_save :fix_jersey_number
  before_save :normalize_player_name

  def self.positions
    ["Portero", "Defensa Central", "Lateral Izquierdo", "Lateral Derecho", "Mediocampista", "Delantero"]
  end

  protected
  def call_before_validation(msg)
    print "#{msg}\n"
  end

  def fix_jersey_number
    if self.jersey_number < 0
      self.jersey_number = self.jersey_number * -1
    end
  end

  def call_after_validation
    print "ME LLAMARON DESPUES DE VALIDAR\n"
  end

  def normalize_player_name
    self.name = self.name.downcase.titleize
  end
end
