require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :user_id => 1,
      :name => "Name",
      :performer => "Performer",
      :sounds_like => "Sounds Like",
      :lyrics => "MyText",
      :guitar_tab => "MyText",
      :bass_tabs => "MyText",
      :youtube_url => "Youtube Url",
      :midi_file_url => "Midi File Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Performer/)
    rendered.should match(/Sounds Like/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Youtube Url/)
    rendered.should match(/Midi File Url/)
  end
end
