class Preset < ActiveRecord::Base
  attr_accessible :instrument_id, :name, :tenant_id, :url, :user_id
  belongs_to :instrument
  belongs_to :user
end
