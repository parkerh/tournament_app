class Event < ActiveRecord::Base
  scope :happened_already, where('date < ', Date.today)
  belongs_to :organizer
  attr_accessible :game, :location, :participants, \
    :rules, :time, :title, :organizer, :organizer_id
  validates :title, :time, :location, :presence => true
end

Event.happened_already
