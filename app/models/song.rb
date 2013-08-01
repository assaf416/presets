class Song < ActiveRecord::Base
  attr_accessible :bass_tabs, :guitar_tab, :lyrics, :midi_file_url, :name, :performer, :sounds_like, :user_id, :youtube_url
end
