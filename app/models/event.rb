class Event < ActiveRecord::Base
  belongs_to :organizer
  attr_accessible :game, :location, :participants, \
    :rules, :time, :title, :organizer, :organizer_id
  validates :title, :time, :location, :presence => true
end
