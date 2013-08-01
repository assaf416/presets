require 'spec_helper'

describe "songs/edit" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :user_id => 1,
      :name => "MyString",
      :performer => "MyString",
      :sounds_like => "MyString",
      :lyrics => "MyText",
      :guitar_tab => "MyText",
      :bass_tabs => "MyText",
      :youtube_url => "MyString",
      :midi_file_url => "MyString"
    ))
  end

  it "renders the edit song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", song_path(@song), "post" do
      assert_select "input#song_user_id[name=?]", "song[user_id]"
      assert_select "input#song_name[name=?]", "song[name]"
      assert_select "input#song_performer[name=?]", "song[performer]"
      assert_select "input#song_sounds_like[name=?]", "song[sounds_like]"
      assert_select "textarea#song_lyrics[name=?]", "song[lyrics]"
      assert_select "textarea#song_guitar_tab[name=?]", "song[guitar_tab]"
      assert_select "textarea#song_bass_tabs[name=?]", "song[bass_tabs]"
      assert_select "input#song_youtube_url[name=?]", "song[youtube_url]"
      assert_select "input#song_midi_file_url[name=?]", "song[midi_file_url]"
    end
  end
end
