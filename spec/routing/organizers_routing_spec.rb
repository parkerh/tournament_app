require "spec_helper"

describe OrganizersController do
  describe "routing" do

    it "routes to #index" do
      get("/organizers").should route_to("organizers#index")
    end

    it "routes to #new" do
      get("/organizers/new").should route_to("organizers#new")
    end

    it "routes to #show" do
      get("/organizers/1").should route_to("organizers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organizers/1/edit").should route_to("organizers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organizers").should route_to("organizers#create")
    end

    it "routes to #update" do
      put("/organizers/1").should route_to("organizers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organizers/1").should route_to("organizers#destroy", :id => "1")
    end

  end
end
