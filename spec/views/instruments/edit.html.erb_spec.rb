require 'spec_helper'

describe "instruments/edit" do
  before(:each) do
    @instrument = assign(:instrument, stub_model(Instrument,
      :name => "MyString"
    ))
  end

  it "renders the edit instrument form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instrument_path(@instrument), "post" do
      assert_select "input#instrument_name[name=?]", "instrument[name]"
    end
  end
end
