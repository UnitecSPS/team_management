class Performance < ActiveRecord::Base
  belongs_to :player
  attr_accessible :assists, :detail, :distance, :goals, :initial, :minutes, :red, :yellows

  def initial_text
    initial? ? "X" : ""
  end

  def red_text
    red? ? "X" : ""
  end
end
