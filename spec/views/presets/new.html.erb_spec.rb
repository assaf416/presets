require 'spec_helper'

describe "presets/new" do
  before(:each) do
    assign(:preset, stub_model(Preset,
      :user_id => 1,
      :name => "MyString",
      :url => "MyString",
      :instrument_id => 1,
      :tenant_id => 1
    ).as_new_record)
  end

  it "renders new preset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presets_path, "post" do
      assert_select "input#preset_user_id[name=?]", "preset[user_id]"
      assert_select "input#preset_name[name=?]", "preset[name]"
      assert_select "input#preset_url[name=?]", "preset[url]"
      assert_select "input#preset_instrument_id[name=?]", "preset[instrument_id]"
      assert_select "input#preset_tenant_id[name=?]", "preset[tenant_id]"
    end
  end
end
