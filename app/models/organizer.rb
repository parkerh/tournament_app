class Organizer < ActiveRecord::Base
  attr_accessible :joined, :name, :organization
  validates :name, :presence => true
end
