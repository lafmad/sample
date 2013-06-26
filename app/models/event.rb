class Event < ActiveRecord::Base
  attr_accessible :capacity, :integer, :is_public, :name, :say
  validates_presence_of :name
end
