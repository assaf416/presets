class Instrument < ActiveRecord::Base
  attr_accessible :name
  has_many :presets
end
