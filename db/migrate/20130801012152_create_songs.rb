class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.string :name
      t.string :performer
      t.string :sounds_like
      t.text :lyrics
      t.text :guitar_tab
      t.text :bass_tabs
      t.string :youtube_url
      t.string :midi_file_url

      t.timestamps
    end
    add_index :songs, :user_id
  end
end
