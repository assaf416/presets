require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :subdomain => "Subdomain",
        :picture_url => "Picture Url",
        :plays_intruments => "Plays Intruments",
        :liked_generes => "Liked Generes",
        :location => "Location",
        :sounds_like => "Sounds Like",
        :password_digest => "Password Digest",
        :admin => false
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :subdomain => "Subdomain",
        :picture_url => "Picture Url",
        :plays_intruments => "Plays Intruments",
        :liked_generes => "Liked Generes",
        :location => "Location",
        :sounds_like => "Sounds Like",
        :password_digest => "Password Digest",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subdomain".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
    assert_select "tr>td", :text => "Plays Intruments".to_s, :count => 2
    assert_select "tr>td", :text => "Liked Generes".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Sounds Like".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
