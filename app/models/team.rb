class Team < ActiveRecord::Base
  attr_accessible :address, :country, :first_div, :founded_at, :name, :phone
  validates_presence_of :name, :country
  validates_uniqueness_of :phone, allow_blank: true
end
