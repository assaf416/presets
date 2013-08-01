require "spec_helper"

describe PresetsController do
  describe "routing" do

    it "routes to #index" do
      get("/presets").should route_to("presets#index")
    end

    it "routes to #new" do
      get("/presets/new").should route_to("presets#new")
    end

    it "routes to #show" do
      get("/presets/1").should route_to("presets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/presets/1/edit").should route_to("presets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/presets").should route_to("presets#create")
    end

    it "routes to #update" do
      put("/presets/1").should route_to("presets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/presets/1").should route_to("presets#destroy", :id => "1")
    end

  end
end
