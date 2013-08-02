class Instrument < ActiveRecord::Base
  attr_accessible :name
  has_many :presets
  has_many :comments, as: :commentable
end
