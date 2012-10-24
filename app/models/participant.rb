class Participant < ActiveRecord::Base
  attr_accessible :age, :email, :name, :payed
  validates :name, :email, :presence => true
end
