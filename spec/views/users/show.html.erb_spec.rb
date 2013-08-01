require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Subdomain/)
    rendered.should match(/Picture Url/)
    rendered.should match(/Plays Intruments/)
    rendered.should match(/Liked Generes/)
    rendered.should match(/Location/)
    rendered.should match(/Sounds Like/)
    rendered.should match(/Password Digest/)
    rendered.should match(/false/)
  end
end
