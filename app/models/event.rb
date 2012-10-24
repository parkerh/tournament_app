class Event < ActiveRecord::Base
  belongs_to :organizer
  attr_accessible :game, :location, :participants, :rules, :time, :title
end
