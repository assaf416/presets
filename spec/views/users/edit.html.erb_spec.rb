require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :subdomain => "MyString",
      :picture_url => "MyString",
      :plays_intruments => "MyString",
      :liked_generes => "MyString",
      :location => "MyString",
      :sounds_like => "MyString",
      :password_digest => "MyString",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_subdomain[name=?]", "user[subdomain]"
      assert_select "input#user_picture_url[name=?]", "user[picture_url]"
      assert_select "input#user_plays_intruments[name=?]", "user[plays_intruments]"
      assert_select "input#user_liked_generes[name=?]", "user[liked_generes]"
      assert_select "input#user_location[name=?]", "user[location]"
      assert_select "input#user_sounds_like[name=?]", "user[sounds_like]"
      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
      assert_select "input#user_admin[name=?]", "user[admin]"
    end
  end
end
