require 'spec_helper'

describe "songs/index" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :user_id => 1,
        :name => "Name",
        :performer => "Performer",
        :sounds_like => "Sounds Like",
        :lyrics => "MyText",
        :guitar_tab => "MyText",
        :bass_tabs => "MyText",
        :youtube_url => "Youtube Url",
        :midi_file_url => "Midi File Url"
      ),
      stub_model(Song,
        :user_id => 1,
        :name => "Name",
        :performer => "Performer",
        :sounds_like => "Sounds Like",
        :lyrics => "MyText",
        :guitar_tab => "MyText",
        :bass_tabs => "MyText",
        :youtube_url => "Youtube Url",
        :midi_file_url => "Midi File Url"
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Performer".to_s, :count => 2
    assert_select "tr>td", :text => "Sounds Like".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube Url".to_s, :count => 2
    assert_select "tr>td", :text => "Midi File Url".to_s, :count => 2
  end
end
