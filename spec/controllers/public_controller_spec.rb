require 'spec_helper'

describe PublicController do

  describe "GET 'welcome'" do
    it "returns http success" do
      get 'welcome'
      response.should be_success
    end
  end

  describe "GET 'register'" do
    it "returns http success" do
      get 'register'
      response.should be_success
    end
  end

end
