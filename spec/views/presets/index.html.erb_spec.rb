require 'spec_helper'

describe "presets/index" do
  before(:each) do
    assign(:presets, [
      stub_model(Preset,
        :user_id => 1,
        :name => "Name",
        :url => "Url",
        :instrument_id => 2,
        :tenant_id => 3
      ),
      stub_model(Preset,
        :user_id => 1,
        :name => "Name",
        :url => "Url",
        :instrument_id => 2,
        :tenant_id => 3
      )
    ])
  end

  it "renders a list of presets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
