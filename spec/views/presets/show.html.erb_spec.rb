require 'spec_helper'

describe "presets/show" do
  before(:each) do
    @preset = assign(:preset, stub_model(Preset,
      :user_id => 1,
      :name => "Name",
      :url => "Url",
      :instrument_id => 2,
      :tenant_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
